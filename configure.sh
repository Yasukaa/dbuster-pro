##############################################################
# THIS IS A LEGAL PROGRAM, DON'T USE THIS FOR ILLEGAL ATTACKS! 
# ONLY ASSHOLES ATTACK PRIVATE ORGS! 
# RESPECT!
# COPYRIGHT DIO-BRANDO, JOSH WASH 2021-2022
##############################################################

cyan='\e[0;36m'
lightcyan='\e[96m'
green='\e[0;32m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
blue='\e[1;34m'
Escape="\033";
white="${Escape}[0m";
RedF="${Escape}[31m";
GreenF="${Escape}[32m";
LighGreenF="${Escape}[92m"
YellowF="${Escape}[33m";
BlueF="${Escape}[34m";
CyanF="${Escape}[36m";
Reset="${Escape}[0m";


if [ $1 == '--help' ]; then
    echo -e "Usage: ./configure.sh [OPTION]
./configure.sh -c  --no-color to disable color
./configure.sh -h  --help to show this message and exit"
    exit 1
fi
if [ $1 == '-c' ]; then
    echo -e "[#] Starting config script"
    sleep 2
    [[ `id -u` -eq 0 ]] > /dev/null 2>&1 || { 
        echo -en "["; echo -en "!"; echo -en "]"; echo -en " You must be root to run the script\n"; exit 1;
    }
    { # try
    gcc configures/*.c -o main
    } || { # catch
        echo gcc does not exist
        echo installing!
        apt install gcc
        #clear
        exit 1 
    }
    gcc configures/*.c -o main
    if ./main --file wordlists/common.txt | grep -q 'fil'; then
        echo continuing...
        clear
    else
        echo -e $red "error, missing files!" echo -e $Reset
        while true; do
            read -p "Do you wish to clone repo again (Y/n)" yn
            case $yn in
                [Yy]* ) cd .. && rm -rf penis && git clone "url mt fodakkk"; break;;
                [Nn]* ) exit;;
                * ) exit 1;;
            esac
        done
        exit 1
    fi
    {
        cp -r lib/ src/  wordlists/ configures/ /usr/bin/
        cp dbuster /usr/bin/   
    } || { # catch
        echo run this program with admin permissions!
        exit 1
    }
    { # try
        chmod +x dbuster
        chmod +x src/init
        chmod +x lib/reqs
    } || { # catch
        echo error, missing files!
        echo creating!
        
        exit 1 
    }
    echo -e "[#] rbuster sucessful configured!"
    echo -e "Usage: dirb [OPTION]
dirb -u <URL>
dirb --url <URL>"
    exit 1
fi


echo -en $Reset"["; echo -en $green"#"; echo -e $Reset"]" "Starting config script!"
sleep 2
[[ `id -u` -eq 0 ]] > /dev/null 2>&1 || { 
    echo -en $Reset"["; echo -en $red"!"; echo -en $Reset"]"; echo -en " You must be root to run the script"; echo -e $Reset ; exit 1;
} 
{ # try
    gcc configures/*.c -o main
} || { # catch
    echo gcc does not exist
    echo installing!
    apt install gcc
    #clear
    exit 1 
}
gcc configures/*.c -o main
if ./main --file wordlists/common.txt | grep -q 'fil'; then
    echo continuing...
    clear
else
    echo -e $red "error, missing files!" echo -e $Reset
    while true; do
        read -p "Do you wish to clone repo again (Y/n)" yn
        case $yn in
            [Yy]* ) cd .. && rm -rf penis && git clone "url mt fodakkk"; break;;
            [Nn]* ) exit;;
            * ) exit 1;;
        esac
    done
    exit 1
fi
{
    cp -r lib/ src/  wordlists/ configures/ /usr/bin/
    cp dbuster /usr/bin/   
} || { # catch
    echo run this program with admin permissions!
    exit 1
}
{ # try
    chmod +x dbuster
    chmod +x src/init
    chmod +x lib/reqs
} || { # catch
    echo error, missing files!
    echo creating!
    
    exit 1 
}
