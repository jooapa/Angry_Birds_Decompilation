import os, sys, subprocess
import py7zr

if len(sys.argv) != 2:
    print("Usage: birdout.py <files.lua>")
    sys.exit(1)

file = sys.argv[1]

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


def extract_7z(archive_path, extract_path):
    with py7zr.SevenZipFile(archive_path, mode='r') as archive:
        archive.extractall(extract_path)

def encrypt_file(hex, file, output_file):
    if os.path.isfile(file):
        print("Encrypting " + file + "...")
        subprocess.call(["bin/openssl.exe", "enc", "-aes-256-cbc", "-d", "-K", hex, "-iv", "0", "-in", file, "-out", output_file])
        extract_7z(output_file, extract_path)
        os.remove(output_file)
        os.remove(file)
        # run java -jar bin/unluac.jar out/<file> > out/<file>.lua
        subprocess.call(["java", "-jar", "bin/unluac.jar", "out/" + file], stdout=open("out/" + file + ".decypt", "w"))
        # move decrypted file to root
        os.rename("out/" + file + ".decypt", file)
        # remove out folder and its contents
        os.remove("out/" + file)
        os.rmdir("out")

        print("Done!")
    else:
        print("File not found!")

output_file = file + ".7z"
extract_path = "out"
encrypt_file(hex, file, output_file)
