#!/bin/sh
# This UNIX shell script FTPs all the files in the input directory to a remote directory
# It uses a UNIX Shell "hear document" to read the commands to the FTP program from the shell file
# You have to use the -n option to the FTP command to disable the prompting for the password
# the quote in front of the ftp user and pass are also necessary to disable reading from stdin
# the prompt must be turned off for the multi-put to not prompt the user
LOCALDIR=stronaDomowa
REMOTESERVER=remoteurl
REMOTEPATH=path.to.file
LOGIN=login
PASSWORD=password

cd $LOCALDIR
ftp -n $REMOTESERVER <<INPUT_END
quote user $LOGIN
quote pass $PASSWORD
cd $REMOTEPATH
prompt off
binary
mput *.*
exit
INPUT_END
