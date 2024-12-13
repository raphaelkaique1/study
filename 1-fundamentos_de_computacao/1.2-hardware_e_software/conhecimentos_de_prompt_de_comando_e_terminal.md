```Shell
# Linux

user@localhost:~$ # user is logged in to localhost
# $ = common user
# # = super user

[ctrl] + [Alt] + [T] # open the terminal
command -l
command -labcd
command --word
command --full-sentence
man command || help command
systemctl --help
export --help
set --help
time # shows the details of an action
printf "format" [arguments]
printf "Hello, %s!\n" "world" # printf allows you to specify the formatting of the output using format specifiers such as %s (string), %d (decimal integer), %f (floating point number)...
printf "Line 1\nLine 2\n" # does not add automatic line break at the end of the line
echo 'content' # displays text in the terminal
echo -e "Line 1\nLine 2" # -e interprets special characters such as \n (new line) or \t (tab)
'' # treats all content as text
"" # treats the content as code by displaying the text and executing the variables
!! # execute the last command
!?systemctl? # searches for the term and executes the command
top # shows real-time information about processes running on the system
ps aux # displays running processes, list information about all processes running on the system
ps aux | grep search_expression # `|` (PIPE) uses the command output as input for the next command - grep: command that is used to search for patterns in a text, when combined with the `ps aux` command, it filters the results to only show lines that match the specified pattern
command parameter argument && command parameter argument # `&&` (AND) = execute different commands in sequence if the previous command is successful
command parameter argument || command parameter argument # `||` (OR) = runs a second command if the first fails
kill PID # stop a process
kill -9 PID # force a process to stop
[ctrl] + [C] # closes the process
sleep 5 # suspends the system for a specified period of time
clear || [ctrl] + [L] # clean the terminal
sudo su # access super user permission
su # access root
su user_name # switches to the selected user
useradd user_name -m -c "User Name" -s /bin/bash -e dd/mm/yyyy -p $(openssl passwd -crypt Password#0) -G GROUP_NAME # add users
└───────┬───────┘└─┬┘└──────┬─────┘ └─────┬────┘ └─────┬─────┘ └───────────────────┬────────────────┘ └──────┬─────┘
        |          |        |             |            |                           |                         └ adds the user to a group
        |          |        |             |            |                           └ set the password
        |          |        |             |            └ sets an access expiration date
        |          |        |             └ define the shell
        |          |        └ set logon user name
        |          └ create the home folder
        └ user name
usermod --help
passwd --help
usermod user_name -s /bin/bash || passwd user_name -e # user edits
mkdir /home/user_name # creates a home folder for the user
chsh --help
chsh -s /bin/bash user_name # define the shell
chown --help
chown [option] new_owner[:new_group] file.type
chown user_name file.type # change file owner
chown user_name:group_name file.type # change the owner and group of a file
chown :group_name file.type # change the group of a file while keeping the owner
chown -R user_name /home/user_name # gives the created super user permission to their home folder
chown -R user_name:group_name /home/user_name # changes the user and group of all files and directories within a directory
login # select the user
passwd # change password
sudo passwd root # assigns password to user
passwd user_name # create/change a user's password
user del -f -r user_name # delete the user
groupadd GROUP_NAME # create a group
usermod -G GROUP_NAME user_name # add users to group
usermod -G GROUP_NAME-1,GROUP_NAME-2,GROUP_NAME-3 user_name # add users to more groups
gpasswd -d user_name GROUP_NAME # remove user from GROUP
groups user_name # shows which groups a user belongs to
groupdel GROUP_NAME # delete the group
poweroff # force shutdown
init 0 # turns off immediately correctly
halt # turns off immediately correctly
shutdown # will turn off in 60 seconds
shutdown now # turns off immediately
shutdown -h now # turns off immediately correctly
shutdown 00:00 # turns off at the specified time
shutdown +10 # turns off after a specific time
shutdown -r now || shutdown -r 00:00 || shutdown -r +10 ||  # schedule the restart
shutdown -c # cancel a scheduled shutdown
reboot # restart
exit # close the terminal

# std
command --help # command documentation
man tool_name # tool manual

# Types of commands
command type # shows the type of command

# internal commands: native OS commands
# ls = list command
# -l = long list parameter
# -a = all parameter
# /directory/directory/ = argument
ls -la /usr/bin less
ls [dir_path/dir_name] | more
ls dir_path/dir_name/f*
ls file_name[1-3]* # file_name1.md file_name2.txt file_name3.sh
ls file_name[1,3]* # file_name1.md file_name3.sh
ls file_name[1-3,5]* # file_name1.md file_name2.txt fale_name3.sh file_name5.conf
ls file_name[^2,4]* # file_name1.md file_name3.sh file_name5.conf
ls file_name[^1-3]* # file_name2.txt file_name5.conf
ls file_name?.conf # file_name5.conf

# external commands: special and user-created commands

# Packages
apt || apt-get # Advanced Package Tool
apt update # check for available updates
apt upgrade -y # update packages
apt-get dist-upgrade -y # update distribution version
apt list # list installed packs
apt search pack_name # search specific pack
apt show pack_name # shows pack info
apt install pack_name -y # install specific pack
apt clean # clears local package cache
apt autoremove -y # automatically remove unnecessary packs
apt purge pack_name -y # remove packs along with all their configuration files
apt remove -y <nome_do_programa> && sudo apt purge -y <nome_do_programa> && sudo rm -r /etc/<nome_do_programa> && sudo apt update # delete a program
# snap = snaps are universal packs that include all dependencies needed to run an application, making them independent of the underlying operating system
snap refresh # update packs
snap find pack_name # search specific pack
snap install pack_name # install specific pack
snap info pack_name # # shows pack info
snap list # list installed packs
snap remove pack_name && sudo apt purge snapd && sudo apt install snapd && snap refresh # remove packs

# Directory
pwd # shows the current directory path
tree # shows directories tree
cd && cd / # home directory
cd / # main
cd ~ # home
cd .. # up
cd - # return
cd . # current directory
cd directory # go to directory
cd home/user_directory/directory/directory # follow the path
mkdir directory_name || mkdir directory_name/subdirectory_name # create directory
mkdir -p directory_name/subdirectory_name # creates multiple directories

# Permissions & Files
- # file
d # directory
l # link
daaa # a - user permissions
-aaabbb # b - group permissions
daaabbbccc # c - other users
-rwx # -r read | -w write | -x execute
-rw- # -r read | -w write | - none
drwxr-xr-x 5 root root 3090 jan 1 23:30 boot
└────┬───┘ | └─┬┘ └─┬┘ └─┬┘└─────┬─────┘└─┬┘
     |     |   |    |    |       |        └ name
     |     |   |    |    |       └ creation date
     |     |   |    |    └ size
     |     |   |    └ group
     |     |   └ owner
     |     └ amount of objects
     └ permissions
chmod u+rw directory_name # user read and write
chmod u-w directory_name # only reading
chmod u-rw directory_name # locked directory for a user
chmod g-rw directory_name # locked directory for a group
chmod o-rw directory_name # folder accessed only by the owner
chmod +x /directory/file_name.type # gives the file execution and modification permission
chmod -x /directory/file_name.type # removes the file execution and modification permission
# r = 4
# w = 2
# x = 1
# '' = 0
chmod 770
      ||└
      |└
      └
. file_name.type || ./directory/file_name.type # execute the script from the file
touch file_name.type # create a file in the current directory
touch directory_name/subdirectory_name/file_name.type # creates a file in the specified directory
touch directory_name/file-1.type directory_name/file-2.type directory_name/file-3.type # creates multiple files
rm -r directory_name # remove directories
rm file_name.type # remove a file
echo 'text' > file_name.type # creates a file with content in the current directory, redirects the output into a file, in this case, redirects from the terminal to the new file, or overwriting if it is an existing file
echo "content $(date)" > directory_name/subdirectory_name/file_name.type # creates a file with content in the specified directory
echo "content $(date)" >> file_name.type # add the output to end of file
echo 'text' >> directory_name/subdirectory_name/file_name.type # add the output to end of file in a especific path
cut -d"cut_parameter" -f"column_delimiter_number" # returns the fields that were delimited from the text
command file_name.type | awk "{print $column_delimiter_number}" # filters the elements of the column passed as argument, each column ("word") of the file must be separated by space " "
cat file_name.type # reads file's content (must be in the same directory as the file)
tac file_name.type # reads the file from last to first line
filter_command less # vertical navigation in long lists
grep --help
grep "content" directory_name/file_name.type # searches for the requested term in the specified file
grep -i "content" directory_name/file_name.type # -i = ignore case sensitive
find --help
find directory_path search_expression # performs a search based on the given parameter
find ~/directory_path -name "search_expression" # search file by name
find ~/directory_path -type f # search file by type, this will return all files within the directory
find ~/directory_path -type d # search directories, this will return all directories within the directory
find ~/directory_path -type f -name "*.type" # find files by type, this will find all files with the specified extension within the directory
find ~/directory_path -type f -size +10M # find files by size, this will find all files larger than 10 megabytes within the directory
find ~/directory_path -type f -perm 644 # find files by permissions, iThis will find all files with exactly 644 permissions
find ~/directory_path -type f -exec command '{file_name.type}' \; # performs an action on found files, this will execute the specified command on each file found within the directory
find ~/directory_path -maxdepth 1 -type f -executable # -maxdepth 1 = limits the search to the current directory only, without entering subdirectories
find . -maxdepth 1 -type f -executable -name 'program_name' # example
find ~/directory/subdirectory -type f -executable # this will search for executable programs in the directory specified in /path/do/your/directory and its subdirectories
find ~/directory/subdirectory -maxdepth 1 -type f -executable # this will only return executable programs directly within the specified directory without going into its subdirectories
find ~/directory/subdirectory -mtime 10 # finds files with changes in the period specified in days
head ~/directory/file_name.type || head file_name.type # displays only the first 10 lines of the file
head -n5 file_name.type # displays only the first 5 lines of the file
nl ~/directory/file_name.type # enumerates the lines of the file
nl file_name.type [> || >>] new_enumerated_file.type # write to a file (whether blank file, added to the end or overwriting an existing one) the lines that were enumerated
tail file_name.type # displays only the last 10 lines of the file
tail -n5 file_name.type # displays only the last 5 lines of the file
# wc -c file_name.type || wc -w file_name.type || wc -l file_name.type
sort file_name.type # sorts the lines of a file alphabetically
sort -r file_name.type # sorts the lines of a file in reverse alphabetical order
paste file-1.type file-2.type # concatenates the lines of the files and displays them in the terminal
paste file-1.type file-2.type > new_file.type # concatenates the lines of the files and writes the output to a new file
paste file-1.type file-2.type >> file_name.type # concatenates the lines of the files and writes output to the end of an existing file
join file_name.type file_name.type # concatenates the lines of files as long as they are ordered numerically
nano file_name.type # creates a file and opens the editor to modify it
vi file_name.type
[Esc] # back to previous menu
[:] # open menu
w # save
q # quit
i # edit mode
vim --help || neovim --help || visudo --help || emacs --help
gcc file_name.c -o program_name # compiling C code using `gcc`
./program_name || . program_name # runs the program from the compiled code
dif file_name.type file_name.type # compare files line by line
tar --help
tar -cf file_name.tar file_name.type file_name.type /directory_path/directory_path/directory_name # -c create/compress | -f give a name to file.tar - joins the files into a single file
tar -xf file_name.tar # -x decompress | -f file to decompress
xz || gz # compression algorithm
tar -cJf fily_name.tar.xz file_name.type file_name.type /directory_path/directory_path/directory_name # -J xz compression type
tar -xJf fily_name.tar.xz
tar -czf fily_name.tar.gz file_name.type file_name.type /directory_path/directory_path/directory_name  # -z gzip compression type
tar -xzf fily_name.tar.gz
split --help
zip [-options] file_name.zip directory
zip file_name.zip file-1_name.type file-2_name.type # file compressor
zip -r directory.zip directory_name # directory compressor
zip -u target.zip new_file.type # add files to an existing ZIP archive
zip -d target.zip file.type # delete files from a ZIP archive
unzip target.zip # file ZIP decompressor
cp file_name.type directory_name # creates a copy of the file in the specified directory
mv file_name.type directory_name # moves the file for the specified directory
mv file_name.type file_name.type # rename the file

# Other commands
cal || cal m yyyy
date
free
who
whoami
uname -a
hostname
dnsdomainname
history || history 10 || history -c || history | grep *term*
export HISTTIMEFORMAT=" %c"
set +o history # disable saving
set -o history # enable saving
file
dmseg | less
df -h || df -h directory
du -sh || du -ch

# Web
ping -c 5 https://ubuntu.com/ # tests the connection by sending a specified number of packets to the destination

# Shell Script

# !!! subshell & working with more than one terminal

#!/bin/bash # #! - command interpreter | /... - path to interpreter

parameter="$1" # receives the first parameter passed, to use another parameter just indicate its position
'example: sudo chmod +x ./file.sh && ./file.sh 10

file.sh:

#!/bin/bash

seconds="$1"

echo "executing"
sleep $seconds
echo "ending"'

# Script
sudo echo '#!/bin/bash

echo "file in execution"
gdialog --title "INITIALIZE PROGRAM" --caption "PROGRAM ON" --msgbox "GUI - Shell Script Program"
name="$(gdialog --title "USER NAME" --inputbox "Input user name")"

start_function() {
	# if-else
	if gdialog --title "INSTALL UPDATES" --caption "Updates" --yesno "Would you like to install the necessary updates automatically?"
		then
		    # for
		    for ((i = 1; i <= 10; i++))
			    do
			    	# arrays
				status[1]="checking..."
				echo "${status[1]} $i"
			    done

		    status[2]="finished"
		    echo "${status[2]}"

		    upmach

		    if gdialog --title "RESET TO INSTALL UPDATES" --caption "Reboot" --yesno "Would you like to restart your mach to correctly install updates?"
			    then
				sudo reboot
			    else
				if gdialog --title "ALERT" --yesno "Are you sure? You will need to manually restart to finish the update..."
					then
						# while
						load=1
						while [[ $load -le 10 ]]
							do
							    (( load++ ))
							    echo "loading..."
							done
					else
						sudo reboot
				fi
		    fi
		else
		    gdialog --title "COMPLETED SUCCESSFULLY" --msgbox "You will need to manually install the updates."
	fi
	script_function

}

script_function() {
	if gdialog --title "SCRIPT" --caption "Code" --yesno "Would you like to see the script?"
		then
			cat file_name.sh
			if gdialog --title "EDIT SCRIPT" --caption "Edit code" --yesno "Would you like to edit the script?"
				then
					nano file_name.sh
				else
					echo "..."
			fi
		else
			echo "..."
	fi
}

upmach() {
	gsettings set org.gnome.desktop.interface gtk-theme "Yaru-dark"
	gsettings set org.gnome.desktop.session idle-delay 0
	gsettings set org.gnome.desktop.screensaver lock-enabled false
	gsettings set org.gnome.desktop.screensaver ubuntu-lock-on-suspend false
 	gsettings set org.gnome.shell favorite-apps "[]"
  	gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false
    	wget https://github.com/raphaelkaiquediasdossantos/ubuntu/assets/158761483/016e61bb-98f8-4c27-a160-5b6045c4219f
    	mv 016e61bb-98f8-4c27-a160-5b6045c4219f ~/Downloads/.fuck-all-foxes.png
	gsettings set org.gnome.desktop.screensaver picture-uri "file:///home/$USER/Downloads/.fuck-all-foxes.png"
	gsettings set org.gnome.desktop.background picture-uri "file:///home/$USER/Downloads/.fuck-all-foxes.png"
   	wget https://github.com/raphaelkaiquediasdossantos/ubuntu/assets/158761483/1eb0d956-f297-4ba9-8c3d-fabc906c15d4
    	mv 1eb0d956-f297-4ba9-8c3d-fabc906c15d4 ~/Downloads/.ubuntu.png

	# dpkg
	sudo dpkg --configure -a

	# apt
	sudo apt update
	sudo apt upgrade -y
	sudo apt full-upgrade -y
	sudo apt dist-upgrade -y
	sudo apt install --fix-broken
	sudo apt install --fix-missing
	sudo apt install --install-recommends
	sudo apt install --install-suggests
	sudo apt install --purge
	sudo apt install --remove
	sudo apt autoclean -y
	sudo apt autoremove -y
	sudo apt autopurge -y

	# apt-get
	sudo apt-get update
	sudo apt-get upgrade -y
	sudo apt-get dist-upgrade
	sudo apt-get purge -y
	sudo apt-get remove -y
	sudo apt-get clean -y
	sudo apt-get autoremove -y
	sudo apt-get autoclean -y
	
	# drives, snap and firmware
	sudo ubuntu-drivers autoinstall
	sudo snap refresh
	sudo fwupdmgr refresh
	sudo fwupdmgr get-updates -y
	sudo fwupdmgr update -y --no-reboot-check
	sudo fwupdmgr get-upgrades -y
	sudo fwupdmgr upgrade -y
 
	# cleaning cache
	sudo sync; sudo sysctl -w vm.drop_caches=3

	gsettings reset org.gnome.desktop.session idle-delay
	gsettings reset org.gnome.desktop.screensaver lock-enabled
	gsettings reset org.gnome.desktop.screensaver ubuntu-lock-on-suspend
}

start_function' > /usr/local/bin/upsystem.sh && sudo chmod +x /usr/local/bin/upsystem.sh && upsystem

nano file_name.sh
[ctrl] + [o]
'enter'
[ctrl] + [x]
```
<a href="https://github.com/raphaelkaique1/study/blob/main/1-fundamentos_de_computacao/1.2-hardware_e_software/sistemas_operacionais.md">previous</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study#hardware_e_software">study</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study/blob/main/1-fundamentos_de_computacao/1.2-hardware_e_software/redes_de_computadores.md">next</a>