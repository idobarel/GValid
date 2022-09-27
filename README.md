# GValid
## The email* validator!
written in python3, GV will check if the inputted (gmail) email is valid!

# Usage
## Installation:
### Installer:
```bash
$ sudo sh -c "$(wget -qO- https://raw.githubusercontent.com/idobarel/GValid/main/installer.sh)" # to run the installer
gv -h # to get the help menu
```
### Github:
```bash
git clone https://github.com/idobarel/GValid.git #clone the repo
cd GValid # navigate into the directory
chmod +x gv # give execute permissions
./gv -h # run the app!
```

## Syntax
the _-h_ argument should give you all the options in the app. but I would like to put it here as well;
### Args:
The program takes 3 arguments, 1 required and 2 optinal:<br>
EMAIL -> required | possitinal arg, no flag. | can take a path to file containing emails.<br>
output -> not required | -o OR --output flag | defualt = None.<br>
verbose -> not required | -v OR --verbose flag | defualt = False.<br>
### Command syntax:
gv -o [ OUTPUT FILE ] -v [ EMAIL ]
### Example:
gv /usr/share/wordlists/emails.txt -v -o valid.txt<br>
to check all emails in the specified path, with verbose.
output all the valid emails found into _valid.txt_

# How?*
The program is sending HEAD request to the following url:<br>
"https://mail.google.com/mail/gxlu?email={EMAIL}"&zx=e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
if the response containse the following cookie:_COMPASS_ then the email should be valid!

# Credits
The idea for this project is from:
https://github.com/dievus/geeMailUserFinder
@dievus 🫶

# Notice
I do not promote any illigal actions, please do not use this script for malicuse activities!

# _hope yall having a blast_
