#!/bin/bash  

# ================ Menu Template =================
# A template with functional examples for creating BaSH menus.
# Save (or copy and paste) this script as your starting point for your file.

# ================ Process ===================
# 1.	Add desired code in modules.
# 2.	Add an option for the user to select in show_menus.
# 3.    Link option to module via read_options.
# 4.    Save the modified file under a new name.


# ============ Environment Variables ============= 

# Options to change the printed text colour
STD='\033[0;0;39m'
RED='\033[0;41;30m'

# =================== Modules =====================
# 1.	Add your desired programme/code modules

PrintUsername(){
# Change text colour and prints the current user variable.
	echo -e "${RED} Current user is: ${STD}" $USER
}

DateTime(){
# create a variable which defines and executes the desired command (date).
	DT=$(date)
# Change text colour and display contents of the DT variable.
	echo -e "${RED} Today is: ${STD}" $DT
}

# ================== Main Menu ====================

MainMenu(){
# Clears the screen
	clear
# Define this menus title.	
	MenuTitle=" - Menu Template - "
# Describe what this menu does
	Description=" An empty template for new menus "

# Display the menu options
# 2.	Add an option for the user to select in show_menus.
show_menus(){
	echo " "	
	echo " $MenuTitle "
	echo " $Description "  
	echo "-----------------------------------"
	echo "0.  Show User			Display the current logged in user"
	echo "1.  Date & Time			Display the day, date and Time"
	echo "2.  Display options 0 & 1 "
	echo "3.  "
	echo "4.  "
	echo "5.  "
	echo "6.  "
	echo "7.  " 
    echo "8.  "
    echo "9.  "
	echo "10. "
	echo "99.  Quit				   Exit this Menu"
	echo " "
	echo " $lastmessage " 
	echo " " 
}

read_options(){
# Maps the displayed options to command modules
# 3.    Link option to module via read_options.
	local choice
# Inform user how to proceed and capture input.	
	read -p "Enter the desired item number or command: " choice	
# Execute selected command modules	
	case $choice in
        0)   PrintUsername ;;
	1)   DateTime ;;
	2)   PrintUsername && DateTime ;;
	3)   ;;
	4)   ;;
	5)   ;;
	6)   ;;
	7)   ;;
	8)   ;;
        9)   ;;
        10)  ;;
# Quit this menu
        99) clear && echo " See you later $USER! " && exit 0;;
# Capture non listed inputs and send to BASH.
	*) echo -e "${RED} $choice is not a displayed option, trying BaSH.....${STD}" && echo -e "$choice" | /bin/bash
	esac
}

# --------------- Main loop --------------------------
# Continues to iterate through this menu loop. 
while true
do
	show_menus
	read_options
done

}

# =================== Run Commands ===============
# commands to run in this file at start (or nothing will happen).
MainMenu

