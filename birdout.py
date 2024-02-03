import os, sys, subprocess
import py7zr

files = sys.argv[1:]
# counting the number of directories

org_path = os.path.dirname(os.path.realpath(__file__))
# get directory of first file
path_to_go = os.path.dirname(files[0])

if len(files) == 0:
    print("Usage: birdout.py <file.lua> <file.lua> ...")
    print("You can also pass a directory as an argument to decrypt all .lua files in it.")
    sys.exit(1)
    

for file in files:
    # if directory
    if os.path.isdir(file):
        # loop through all files in directory and if extension is .lua, add to list
        for root, dirs, files in os.walk(file):
            for file in files:
                if file.endswith(".lua"):
                    file = os.path.join(root, file)
                    print("File: " + file)
        
    if not os.path.isfile(file):
        print("File not found: " + file)
        # remove file from list
        files.remove(file)

if len(files) == 0:
    print("No valid files found!")
    sys.exit(1)

# go to directory of first file
os.chdir(path_to_go)
# remove the path from files
files = [os.path.basename(file) for file in files]

print("\nAngry Birds Lua Decryptor, works on for decrypting Angry Birds Lua files.")
print("For Encrypting Luad files back,  Chech README.md")
print("nöf nöf!")

print("\nDecrypting files: " + str(files))
      
inp = input('''
CHOOSE Angry Birds Game:
1. Angry Birds
2. Angry Birds Rio
3. Angry Birds Seasons
4. Angry Birds Space
5. Angry Birds Star Wars
6. Angry Birds Star Wars II
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
    print("Invalid input! nöf nöf!")
    sys.exit(1)

def extract_7z(archive_path, extract_path):
    print("Extracting " + archive_path + "...")
    try:
        with py7zr.SevenZipFile(archive_path, mode='r') as archive:
            archive.extractall(extract_path)
    except py7zr.exceptions.Bad7zFile:
        print("Error: Not a 7z archive! File might be corrupted somehow or it already has been decrypted.")
        os.remove(archive_path)
        sys.exit(1)

def decrypt_file(hex, file):
    print("Decrypting " + file + "...")
    output_file = file + ".7z"
    
    combined_path = os.path.join(org_path, "bin/openssl")
    if os.name == 'nt':
        decryption_result = subprocess.run([combined_path, "enc", "-aes-256-cbc", "-d", "-K", hex, "-iv", "0", "-in", file, "-out", output_file], capture_output=True)
    elif os.name == 'posix':
        decryption_result = subprocess.run(["wine", combined_path, "enc", "-aes-256-cbc", "-d", "-K", hex, "-iv", "0", "-in", file, "-out", output_file], capture_output=True)

    if decryption_result.returncode != 0:
        print("You might have entered the wrong game file or the file is corrupted. Decrypting failed! nöf nöf!")
        os.remove(file + ".7z")
        sys.exit(1)
    
    extract_7z(output_file, extract_path)
    os.remove(output_file)
    os.remove(file)
    # run java -jar bin/unluac.jar out/<file> > out/<file>.lua
    combined_jar_path = os.path.join(org_path, "bin/unluac.jar")
    # subprocess.call(["java", "-jar", "bin/unluac.jar", "out/" + file], stdout=open("out/" + file + ".decrypt", "w"))
    subprocess.call(["java", "-jar", combined_jar_path, "out/" + file], stdout=open("out/" + file + ".decrypt", "w"))
    # move decrypted file to root
    os.rename("out/" + file + ".decrypt", file)
    # remove out folder and its contents
    os.remove("out/" + file)
    os.rmdir("out")

    print("Done!", file + " decrypted!")

extract_path = "out"

# for loop encrypts all files passed as arguments
for file in files:
    decrypt_file(hex, file)

print("nöf nöf!")
