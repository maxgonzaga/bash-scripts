# bash-scripts
This repository contains some use useful scripts I've been creating.
## Install
    git clone https://github.com/maxgonzaga/bash-scripts
    cd bash-scripts
## snake
Usage:
    ./snake file...
This scripts performs the following actions on which file it is given:
- Replace parenthesis, underscores, spaces, commas and period with a single dash;
- Replace a lowercase letter followed by an uppercase letter with the same letters separated by a dash.
- Remove single quotes;
- Change the filename to lowercase;
- Replace characters with diacritics with the corresponding ASCII ones. If a character can not be represented in the ASCII set, it will be replaced  with a similar looking character.
