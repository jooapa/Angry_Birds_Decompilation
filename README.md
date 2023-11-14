# ANGRY BIRDS Decompilation

## Where to install Angry Birds PC ports
If you don't know how to install Angry Birds PC ports, [here](https://archive.org/details/angry-birds-pc) is a link to the Internet Archive page for the PC ports of Angry Birds.

### Automatic Usage
Firstly install [Python 3](https://www.python.org/downloads/).

    pip install py7zr


Drag and drop the .lua file to birdout.py and choose what angry birds game it is. Then it will decrypt it for you automatically.
or you can run it in the terminal with:

    python birdout.py <file.lua> <file.lua> ...


### Manual Usage
You will need to have [openssl](https://sourceforge.net/projects/openssl/) installed and in your Environment variables.
AND [7z](https://www.7-zip.org/download.html) installed in the terminal.
and [Java Development Kit (JDK)](https://www.freecodecamp.org/news/how-to-set-up-java-development-environment-a-comprehensive-guide/). [The Sketchy unluac.jar is a decompiler for .luac files.](https://sourceforge.net/projects/unluac/)

You need to run this to the .lua file you want to en or decrypt

Decrypt:

    openssl enc -aes-256-cbc -d -K [hex] -iv 0 -in [name].lua -out [name].lua.dec
    
then you need to open the lua.dec file with 7z and extract the content or copy.
then you should have .luac file. It will say that it is a .lua file but it is actually a .luac file.

then run:

    java -jar unluac.jar "file_encrypted.lua" > "file_decrypted.lua"
AND BOOM!

Encrypt:

    openssl enc -aes-256-cbc -e -K [hex] -iv 0 -in [name].lua.dec -out [name].lua

## Keys

Angry Birds

    Str = USCaPQpA4TSNVxMI1v9SK9UC0yZuAnb2
    
    Hex = 55534361505170413454534E56784D49317639534B39554330795A75416E6232

Angry Birds: Rio

    Str = USCaPQpA4TSNVxMI1v9SK9UC0yZuAnb2

    Hex = 55534361505170413454534E56784D49317639534B39554330795A75416E6232

Angry Birds: Seasons

    Str = zePhest5faQuX2S2Apre@4reChAtEvUt
    
    Hex = 7A65506865737435666151755832533241707265403472654368417445765574

Angry Birds: Space

    Str = RmgdZ0JenLFgWwkYvCL2lSahFbEhFec4
    
    Hex = 526D67645A304A656E4C466757776B5976434C326C5361684662456846656334

Angry Birds: Star Wars

    Str = An8t3mn8U6spiQ0zHHr3a1loDrRa3mtE
    
    Hex = 416E3874336D6E38553673706951307A4848723361316C6F44725261336D7445

Angry Birds: Star Wars II

    Str = B0pm3TAlzkN9ghzoe2NizEllPdN0hQni
    
    Hex = 4230706D3354416C7A6B4E3967687A6F65324E697A456C6C50644E3068516E69


# credos
half stuff found in this sketchy forum site:
    <a>https://web.archive.org/web/20231015200421/https://forum.xentax.com/viewtopic.php?t=9840</a>
Needed to save it in the wayback machine because the site is going to be shut down on December, 2023.
Heres more forum stuff:
<a>https://web.archive.org/web/20231015200746/https://xdaforums.com/t/q-angry-birds-rio-encrypts-settings-highscores-with-aes.1015380/<a>