# menu-template
A template for creating a BASH menu script with examples.  
Automate commands entered on a regular basis.
Commands not matching a menu entry, ie; 'ls' are passed to /bin/bash.    

Save (or copy and paste) this script as a starting point for your file.  

============ Process =============  
1. Add desired code modules.  
2. Add an option for the user to select in show_menus.  
3. Add option to module via read_options.  
4. Save the modified file under a new name.  


============ Modules =============  
Below are a couple of examples of the desired layout for modules:  

PrintUsername(){
	echo -e "${RED} Current user is: ${STD}" $USER
}

DateTime(){
	DT=$(date)
	echo -e "${RED} Today is: ${STD}" $DT
}

More details can be found within the script.  
