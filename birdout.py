import os, sys, subprocess

class C:
    HEADER = '\033[95m'
    OKBLUE = '\033[94m'
    OKCYAN = '\033[96m'
    OKGREEN = '\033[92m'
    WARNING = '\033[93m'
    FAIL = '\033[91m'
    ENDC = '\033[0m'
    BOLD = '\033[1m'
    UNDERLINE = '\033[4m'
    GREY = '\033[90m'
    
arg_files = sys.argv[1:]
files = []

# counting the number of directories

org_path = os.path.dirname(os.path.realpath(__file__))
# get directory of first file
path_to_current_lua_file = []

if len(arg_files) == 0:
    print(C.FAIL + "Usage: birdout.py <file.lua> <file.lua> ..." + C.ENDC)
    print("You can also pass a directory as an argument to decrypt all .lua files in it.")
    sys.exit(1)

bin_folder_exists = False
# check if bin folder exists
if not os.path.exists(os.path.join(org_path, "bin")):
    print(f"{C.FAIL}bin folder not found! nöf nöf!{C.ENDC}")
    bin_folder_exists = False
else:
    bin_folder_exists = True
    
# check if openssl is installed
have_openSSL = False
if os.name == 'nt':
    try:
        subprocess.run(["openssl", "version"], capture_output=True)
        have_openSSL = True
        print(f"{C.OKGREEN}OpenSSL found!{C.ENDC}")
    except FileNotFoundError:
        have_openSSL = False
        print(f"{C.FAIL}OpenSSL not found! {C.WARNING}Using the bundled version of OpenSSL in the bin folder.{C.ENDC}")
elif os.name == 'posix':
    try:
        subprocess.run(["which", "openssl"], capture_output=True)
        have_openSSL = True
        print(f"{C.OKGREEN}OpenSSL found!{C.ENDC}")
    except FileNotFoundError:
        have_openSSL = False
        print(f"{C.FAIL}OpenSSL not found!\n{C.WARNING}Using the bundled version of OpenSSL in the bin folder.{C.ENDC}")

if not bin_folder_exists and not have_openSSL:
    print(f"{C.FAIL}No bin folder so can't use bundled OpenSSL! nöf nöf!{C.ENDC}\n{C.WARNING}Please install OpenSSL and add it to PATH or download the bin folder from the repository.{C.ENDC}")
    sys.exit(1)

# check if java is installed
have_java = False
if os.name == 'nt':
    try:
        subprocess.run(["java", "-version"], capture_output=True)
        have_java = True
        print(f"{C.OKGREEN}Java found!{C.ENDC}")
    except FileNotFoundError:
        have_java = False
        print(f"{C.FAIL}Java not found!{C.ENDC}")
elif os.name == 'posix':
    try:
        subprocess.run(["which", "java"], capture_output=True)
        have_java = True
        print(f"{C.OKGREEN}Java found!{C.ENDC}")
    except FileNotFoundError:
        have_java = False
        print(f"{C.FAIL}Java not found!{C.ENDC}")
        
if not have_java:
    print(f"{C.FAIL}Java is required for decrypting .lua files! \nTry using this guide https://www.freecodecamp.org/news/how-to-set-up-java-development-environment-a-comprehensive-guide/{C.ENDC}")
    sys.exit(1)
    
# check if unluac.jar exists
if not os.path.exists(os.path.join(org_path, "bin", "unluac.jar")):
    print(f"{C.FAIL}unluac.jar not found! nöf nöf!{C.WARNING}\n Add unluac.jar to the bin folder.{C.ENDC}")
    sys.exit(1)
    
# check if 7z is installed
have_7z = False
if os.name == 'nt':
    try:
        subprocess.run(["7z", "version"], capture_output=True)
        have_7z = True
        print(f"{C.OKGREEN}7z found!{C.ENDC}")
    except FileNotFoundError:
        have_7z = False
        print(f"{C.FAIL}7z not found!{C.ENDC}")
elif os.name == 'posix':
    try:
        subprocess.run(["which", "7z"], capture_output=True)
        have_7z = True
        print(f"{C.OKGREEN}7z found!{C.ENDC}")
    except FileNotFoundError:
        have_7z = False
        print(f"{C.FAIL}7z not found!{C.ENDC}")
        
if not have_7z:
    print(f"{C.FAIL}7z is required for extracting .7z files!{C.ENDC}")
    sys.exit(1)    
    
# ask user if they want to decrypt only .lua files
onlyLuaFiles = True

while True:
    onlyLuaFiles = input("\nDo you want to decrypt only .lua files? " + C.GREY + "(y/n): " + C.ENDC)
    if onlyLuaFiles == "y" or onlyLuaFiles == "n":
        if onlyLuaFiles == "y":
            onlyLuaFiles = True
        else:
            onlyLuaFiles = False
        break
    else:
        print(f"{C.FAIL}Invalid input! nöf nöf!\nyes or no{C.ENDC}")
        
    
for file in arg_files:
    # if directory
    if os.path.isdir(file):
        # loop through all files in directory and if extension is .lua, add to list
        for root, dirs, files_in_dir in os.walk(file):
            for file_in_dir in files_in_dir:
                if file_in_dir.endswith(".lua") or not onlyLuaFiles:
                    file_path = os.path.join(root, file_in_dir)
                    print(C.OKGREEN + "Found file: " + file_path + C.ENDC)
                    files.append(file_path)
                    
    elif os.path.isfile(file):
        print(C.OKGREEN + "Found file: " + file + C.ENDC)
        files.append(file)
    else:
        print(C.FAIL + "File not found: " + file + C.ENDC)

if len(files) == 0:
    print(C.FAIL + "No .lua files found! nöf nöf!" + C.ENDC)
    sys.exit(1)
    
# get directory of each file
for file in files:
    path_to_current_lua_file.append(os.path.dirname(file))

# remove the path from files
# files = [os.path.basename(file) for file in files]

print(C.HEADER)
print("\nAngry Birds Lua Decryptor"+ C.ENDC +", works on for decrypting Angry Birds game files.")
print("For " + C.UNDERLINE + "Encrypting" + C.ENDC + " files back to og, " + C.BOLD + "Check README.md" + C.ENDC)

inp = input(f''' 
{C.HEADER}CHOOSE Angry Birds Game: {C.ENDC}
{C.BOLD}1.{C.ENDC} Angry Birds
{C.BOLD}2.{C.ENDC} Angry Birds Rio
{C.BOLD}3.{C.ENDC} Angry Birds Seasons
{C.BOLD}4.{C.ENDC} Angry Birds Space
{C.BOLD}5.{C.ENDC} Angry Birds Star Wars
6{C.BOLD}.{C.ENDC} Angry Birds Star Wars II
            ''')

if inp == '1':   # Angry Birds
    hex = "55534361505170413454534E56784D49317639534B39554330795A75416E6232"
elif inp == '2': # Angry Birds Rio
    hex = "55534361505170413454534E56784D49317639534B39554330795A75416E6232"
elif inp == '3': # Angry Birds Seasons
    hex = "7A65506865737435666151755832533241707265403472654368417445765574"
elif inp == '4': # Angry Birds Space
    hex = "526D67645A304A656E4C466757776B5976434C326C5361684662456846656334"
elif inp == '5': # Angry Birds Star Wars
    hex = "416E3874336D6E38553673706951307A4848723361316C6F44725261336D7445"
elif inp == '6': # Angry Birds Star Wars II
    hex = "4230706D3354416C7A6B4E3967687A6F65324E697A456C6C50644E3068516E69"
else:
    print(f"{C.FAIL}Invalid input! nöf nöf!{C.ENDC}")
    sys.exit(1)

def extract_7z(archive_path, extract_path):
    print(f"Extracting {C.OKBLUE}" + archive_path + f"{C.ENDC}...")
    try:
        if '7Z' in os.environ:
            seven_zip_path = os.environ['7Z']
        else:
            seven_zip_path = "7z"  # Default path if the environment variable is not set

        subprocess.run([seven_zip_path, "x", archive_path, f"-o{extract_path}"])
    except subprocess.CalledProcessError:
        print(f"{C.FAIL}Error: Not a 7z archive! File might be corrupted somehow or it already has been decrypted.{C.ENDC}")
        os.remove(archive_path)
        sys.exit(1)

def decrypt_file(hex, file):
    print(f"Decrypting {C.OKBLUE}" + file + f"{C.ENDC}...")
    output_file = file + ".7z"
    
    if have_openSSL:
        combined_path = "openssl"
    else:
        combined_path = os.path.join(org_path, "bin/openssl")
        
    if os.name == 'nt':
        decryption_result = subprocess.run([combined_path, "enc", "-aes-256-cbc", "-d", "-K", hex, "-iv", "0", "-in", file, "-out", output_file], capture_output=True)
    elif os.name == 'posix':
        if have_openSSL:
            decryption_result = subprocess.run(["openssl", "enc", "-aes-256-cbc", "-d", "-K", hex, "-iv", "0", "-in", file, "-out", output_file], capture_output=True)
        else:
            decryption_result = subprocess.run(["wine", combined_path, "enc", "-aes-256-cbc", "-d", "-K", hex, "-iv", "0", "-in", file, "-out", output_file], capture_output=True)

    if decryption_result.returncode != 0:
        print(f"{C.FAIL}You might have entered the wrong game file or the file is corrupted. Decrypting failed! nöf nöf! \nor the file has been already decrypted{C.ENDC}")
        os.remove(file + ".7z")
        
        while True:
            continue_still = input(f"\nDo you want to continue with the next file? " + C.GREY + "(y/n): " + C.ENDC)
            if continue_still == "y" or continue_still == "n":
                if continue_still == "y":
                    pass
                else:
                    sys.exit(1)
                break
            else:
                print(f"{C.FAIL}Invalid input! nöf nöf!{C.ENDC}")
        return
    
    extract_7z(output_file, extract_path)
    os.remove(output_file)
    os.remove(file)
    if onlyLuaFiles:
        # run java -jar bin/unluac.jar out/<file> > out/<file>.lua
        combined_jar_path = os.path.join(org_path, "bin/unluac.jar")
        # subprocess.call(["java", "-jar", "bin/unluac.jar", "out/" + file], stdout=open("out/" + file + ".decrypt", "w"))
        subprocess.call(["java", "-jar", combined_jar_path, "out/" + file], stdout=open("out/" + file + ".decrypt", "w"))
        # move decrypted file to root
        os.rename("out/" + file + ".decrypt", file)
        # remove out folder and its contents
        os.remove("out/" + file)
        os.rmdir("out")
    else:
        # move file to parent directory
        os.rename("out/" + file, file)
        # remove out folder
        os.rmdir("out")

    print(f"{C.OKCYAN}Done! {file} decrypted!{C.ENDC}")

extract_path = "out"

# for loop encrypts all files passed as arguments
for file in files:
    os.chdir(org_path)
    os.chdir(path_to_current_lua_file[files.index(file)])
    # remove path from file
    file = os.path.basename(file)
    decrypt_file(hex, file)

print(C.OKGREEN + "nöf nöf! Done!" + C.ENDC)
