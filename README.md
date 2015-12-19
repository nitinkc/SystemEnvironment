# System Environment 

## Setting Mac Terminal environment for Development

Keeping command prompt files Organised.
Also used for git tutoring purpose. This will be helpful.

Global settings:
/etc/profile
/etc/bashrc

Personal settings:
~/.bash_profile OR  ~/.bash_login OR ~/.profile
~/.bashrc
~/.bash_aliases

.bash_profile ->  login shell 
.bashrc -> non-login shell. 

When you start a sub-shell (by typing a shell's name at the command-prompt), you get a "non-login shell".

When a "login shell" starts up, it reads the file 
"/etc/profile" and 
then "~/.bash_profile" or "~/.bash_login" or "~/.profile" 
(whichever one exists - it only reads one of these, checking for them in the order mentioned).

When a "non-login shell" starts up, it reads the file "/etc/bashrc" and then the file "~/.bashrc".

PATH

OSX -> special environment variable in UNIX-like systems
     -> to define where to search for executable files (whether binaries, shell scripts).
	 ->	specifying a set of directories where executable programs are located. 

	-> $PATH variable, a list directory names separated by colon (:) characters
	-> The superuser has /sbinand /usr/sbin entries for easily executing system administration commands. 
	-> The current directory (.) is used for programs residing in the current working directory to be executed directly.


On DOS, OS/2, and Windows operating systems, 

	-> the %PATH% variable, separated by semicolon (;)
	-> The Windows system directory ( C:\WINDOWS\system32) is the first directory in the path, followed by directories for installed software packages. 
	-> In the DOS era, it was customary to add a PATH {program directory};%PATH% or SET PATH={program directory};%PATH%line to AUTOEXEC.BAT.


#OS X: Change your PATH environment variable

You can add path to any one of the following two method:

$HOME/.bash_profile file using export syntax.
/etc/paths.d directory.
	set the JAVA_HOME and JRE_HOME environmental variables 
	export JAVA_HOME=$(/usr/libexec/java_home)
export JRE_HOME=$(/usr/libexec/java_home)

#Setting Temporary Environmental Variables in OS X
export PATH=$PATH:~/bin
###Adding a Temporary Location
PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
###Adding in a Permanent Location
create a .bash_profile or .profile file in the home directory and set the path in the files as. 
export PATH="/usr/local/<my_package>/bin:$PATH"

/etc/paths.d
