# menu-template
A template for creating a BASH menu script with examples.  
Automate commands entered on a regular basis.
Commands not matching a menu entry, ie; 'ls' are passed to /bin/bash.    

Save (or copy and paste) this script as a starting point for your file.  

# ============ Process =============  
1. Add desired code modules.  
2. Add an option for the user to select in show_menus.  
3. Add option to module via read_options.  
4. Save the modified file under a new name.  


# =================== Modules =====================  
Below are a couple of examples of the desired layout for modules:  

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

