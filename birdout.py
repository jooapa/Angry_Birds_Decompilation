import os, sys, subprocess

class col:
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
    print(col.FAIL + "Usage: birdout.py <file.lua> <file.lua> ..." + col.ENDC)
    print("You can also pass a directory as an argument to decrypt all .lua files in it.")
    sys.exit(1)
    
onlyLuaFiles = True

while True:
    onlyLuaFiles = input("\nDo you want to decrypt only .lua files? " + col.GREY + "(y/n): " + col.ENDC)
    if onlyLuaFiles == "y" or onlyLuaFiles == "n":
        if onlyLuaFiles == "y":
            onlyLuaFiles = True
        else:
            onlyLuaFiles = False
        break
    else:
        print(f"{col.FAIL}Invalid input! nöf nöf!{col.ENDC}")
        
    
for file in arg_files:
    # if directory
    if os.path.isdir(file):
        # loop through all files in directory and if extension is .lua, add to list
        for root, dirs, files_in_dir in os.walk(file):
            for file_in_dir in files_in_dir:
                if file_in_dir.endswith(".lua") or not onlyLuaFiles:
                    file_path = os.path.join(root, file_in_dir)
                    print(col.OKGREEN + "Found file: " + file_path + col.ENDC)
                    files.append(file_path)
                    
    elif os.path.isfile(file):
        print(col.OKGREEN + "Found file: " + file + col.ENDC)
        files.append(file)
    else:
        print(col.FAIL + "File not found: " + file + col.ENDC)

if len(files) == 0:
    print(col.FAIL + "No valid Files!" + col.ENDC)
    sys.exit(1)
    
# get directory of each file
for file in files:
    path_to_current_lua_file.append(os.path.dirname(file))

# remove the path from files
# files = [os.path.basename(file) for file in files]

print(col.HEADER)
print("\nAngry Birds Lua Decryptor"+ col.ENDC +", works on for decrypting Angry Birds game files.")
print("For " + col.UNDERLINE + "Encrypting" + col.ENDC + " files back to og, " + col.BOLD + "Check README.md" + col.ENDC)

inp = input(f''' 
{col.HEADER}CHOOSE Angry Birds Game: {col.ENDC}
{col.BOLD}1.{col.ENDC} Angry Birds
{col.BOLD}2.{col.ENDC} Angry Birds Rio
{col.BOLD}3.{col.ENDC} Angry Birds Seasons
{col.BOLD}4.{col.ENDC} Angry Birds Space
{col.BOLD}5.{col.ENDC} Angry Birds Star Wars
6{col.BOLD}.{col.ENDC} Angry Birds Star Wars II
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
    print(f"{col.FAIL}Invalid input! nöf nöf!{col.ENDC}")
    sys.exit(1)

def extract_7z(archive_path, extract_path):
    print(f"Extracting {col.OKBLUE}" + archive_path + f"{col.ENDC}...")
    try:
        if '7Z' in os.environ:
            seven_zip_path = os.environ['7Z']
        else:
            seven_zip_path = "7z"  # Default path if the environment variable is not set

        subprocess.run([seven_zip_path, "x", archive_path, f"-o{extract_path}"])
    except subprocess.CalledProcessError:
        print(f"{col.FAIL}Error: Not a 7z archive! File might be corrupted somehow or it already has been decrypted.{col.ENDC}")
        os.remove(archive_path)
        sys.exit(1)

def decrypt_file(hex, file):
    print(f"Decrypting {col.OKBLUE}" + file + f"{col.ENDC}...")
    output_file = file + ".7z"
    
    combined_path = os.path.join(org_path, "bin/openssl")
    if os.name == 'nt':
        decryption_result = subprocess.run([combined_path, "enc", "-aes-256-cbc", "-d", "-K", hex, "-iv", "0", "-in", file, "-out", output_file], capture_output=True)
    elif os.name == 'posix':
        decryption_result = subprocess.run(["wine", combined_path, "enc", "-aes-256-cbc", "-d", "-K", hex, "-iv", "0", "-in", file, "-out", output_file], capture_output=True)

    if decryption_result.returncode != 0:
        print(f"{col.FAIL}You might have entered the wrong game file or the file is corrupted. Decrypting failed! nöf nöf! \nor the file has been already decrypted{col.ENDC}")
        os.remove(file + ".7z")
        
        while True:
            continue_still = input(f"\nDo you want to continue with the next file? " + col.GREY + "(y/n): " + col.ENDC)
            if continue_still == "y" or continue_still == "n":
                if continue_still == "y":
                    pass
                else:
                    sys.exit(1)
                break
            else:
                print(f"{col.FAIL}Invalid input! nöf nöf!{col.ENDC}")
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

    print(f"{col.OKCYAN}Done! {file} decrypted!{col.ENDC}")

extract_path = "out"

# for loop encrypts all files passed as arguments
for file in files:
    os.chdir(org_path)
    os.chdir(path_to_current_lua_file[files.index(file)])
    # remove path from file
    file = os.path.basename(file)
    decrypt_file(hex, file)

print(col.OKGREEN + "nöf nöf! Done!" + col.ENDC)
