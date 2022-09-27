#!/usr/bin/bash
pip3 install termcolor
python3 -c "from termcolor import colored; print(colored('Downloading requirements.txt...', 'yellow'))"
wget https://raw.githubusercontent.com/idobarel/GValid/main/requirements.txt
python3 -c "from termcolor import colored; print(colored('Installing requirements', 'yellow'))"
pip3 install -r requirements.txt
python3 -c "from termcolor import colored; print(colored('Downloading the binary', 'yellow'))"
wget https://raw.githubusercontent.com/idobarel/GValid/main/gv
chmod +x gv
python3 -c "from termcolor import colored; print(colored('Moving GValid to /usr/bin', 'yellow'))"
sudo mv gv /usr/bin
clear
python3 -c "from termcolor import colored; print(colored('Done!', 'green', attrs=['bold']))"
echo "use gv to run!"