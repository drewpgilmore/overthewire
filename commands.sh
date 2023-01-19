'1: The password for the next level is stored in a file called
readme located in the home directory. Use this password to log
into bandit1 using SSH. Whenever you find a password for a level,
use SSH (on port 2220) to log into that level and continue the game.'
cat readme

'2: The password for the next level is stored in a file called -
located in the home directory'
# < allows for accessing files starting with - 
cat < - 

'3: The password for the next level is stored in a file called spaces
in this filename located in the home directory'
cat spaces\ in\ this\ filename

'4: The password for the next level is stored in a hidden file in the
inhere directory.'
cd inhere/
cat .hidden

'5: The password for the next level is stored in the only human-readable
file in the inhere directory. Tip: if your terminal is messed
up, try the “reset” command.'
cd inhere/
file ./*
cat < -file07

'6: The password for the next level is stored in a file somewhere under
the inhere directory and has all of the following properties:
human-readable
1033 bytes in size
not executable'
cd inhere/
find . -size 1033c
cat ./maybehere07/.file2

'7: The password for the next level is stored somewhere on the
server and has all of the following properties:
owned by user bandit7
owned by group bandit6
33 bytes in size'
find /* -size 33c -group bandit6 -user bandit7
cat /var/lib/dpkg/info/bandit7.password

'8: The password for the next level is stored in the file data.txt
next to the word millionth'
grep "millionth" data.txt

'9: The password for the next level is stored in the file data.txt
and is the only line of text that occurs only once'
cat data.txt | sort | uniq -u

'10: The password for the next level is stored in the file data.txt
in one of the few human-readable strings, preceded by several ‘=’
characters.'
strings data.txt | grep "="

'11: The password for the next level is stored in the file data.txt,
which contains base64 encoded data'
base64 -d data.txt

'12: The password for the next level is stored in the file data.txt,
where all lowercase (a-z) and uppercase (A-Z) letters have been
rotated by 13 positions'
cat data.txt | tr '[a-z]' '[n-za-m]' | tr '[A-Z]' '[N-ZA-M]'

'13: The password for the next level is stored in the file data.txt,
which is a hexdump of a file that has been repeatedly compressed.
For this level it may be useful to create a directory under /tmp in
which you can work using mkdir. For example: mkdir /tmp/myname123.
Then copy the datafile using cp, and rename it using mv (read the
manpages!)'
mkdir /tmp/drew
cp data.txt /tmp/drew
cd /tmp/drew
xxd -r data.txt > data2.txt
file data2.txt # gzip
cp data2.txt data2.txt.gz
gzip -d data2.txt.gz
file data2.txt # bzip2
bzip2 -d data2.txt 
file data2.txt.out # gzip
cp data2.txt.out dat2.txt.out.gz
gzip -d data2.txt.out.gz
file data2.txt.out # POSIX tar archive
cp data2.txt.out data2.tar
tar xvf data2.tar
file data5.bin # POSIX tar archive
cp data5.bin data5.tar
tar xvf data5.tar
file data6.bin # bzip2
cp data6.bin data6.bz2
bzip2 -d data6.bz2
file data6 # POSIX tar archive
cp data6 data6.tar
tar xvf data6.tar
file data8.bin # gzip
cp data8.bin data8.gz
gzip -d data8.gz
cat data 8

'14: The password for the next level is stored in
/etc/bandit_pass/bandit14 and can only be read by user
bandit14. For this level, you don’t get the next password, but you
get a private SSH key that can be used to log into the next level.
Note: localhost is a hostname that refers to the machine
you are working on'

'15: The password for the next level can be retrieved by submitting the
password of the current level to port 30000 on localhost.'

'16: The password for the next level can be retrieved by submitting the
password of the current level to port 30001 on localhost using
SSL encryption.'

'17: The credentials for the next level can be retrieved by submitting the
password of the current level to a port on localhost in the range
31000 to 32000. First find out which of these ports have a server
listening on them. Then find out which of those speak SSL and which
don’t. There is only 1 server that will give the next credentials, the
others will simply send back to you whatever you send to it.'

'18: There are 2 files in the homedirectory: passwords.old and
passwords.new. The password for the next level is in
passwords.new and is the only line that has been changed between
passwords.old and passwords.new'

'19: The password for the next level is stored in a file readme in
the homedirectory. Unfortunately, someone has modified .bashrc
to log you out when you log in with SSH.'

'20: To gain access to the next level, you should use the setuid binary
in the homedirectory. Execute it without arguments to find out how
to use it. The password for this level can be found in the usual
place (/etc/bandit_pass), after you have used the setuid binary.'

'21: There is a setuid binary in the homedirectory that does the
following: it makes a connection to localhost on the port you
specify as a commandline argument. It then reads a line of text from
the connection and compares it to the password in the previous level
(bandit20). If the password is correct, it will transmit the
password for the next level (bandit21).'

'22: A program is running automatically at regular intervals from
cron, the time-based job scheduler. Look in /etc/cron.d/ for
the configuration and see what command is being executed.'

'23: A program is running automatically at regular intervals from
cron, the time-based job scheduler. Look in /etc/cron.d/ for
the configuration and see what command is being executed.'

'24: A program is running automatically at regular intervals from
cron, the time-based job scheduler. Look in /etc/cron.d/ for
the configuration and see what command is being executed.'

'25: A daemon is listening on port 30002 and will give you the password for
bandit25 if given the password for bandit24 and a secret numeric 4-digit pincode.
There is no way to retrieve the pincode except by going through all of the 10000
combinations, called brute-forcing.
You do not need to create new connections each time'

'26: Logging in to bandit26 from bandit25 should be fairly easy…
The shell for user bandit26 is not /bin/bash, but something else.
Find out what it is, how it works and how to break out of it.'

'27: Good job getting a shell! Now hurry and grab the password for bandit27!'

'28: There is a git repository at ssh://[email protected]/home/bandit27-git/repo. The password for the user bandit27-git is the same as for the user bandit27.'

'29: There is a git repository at ssh://[email protected]/home/bandit28-git/repo. The password for the user bandit28-git is the same as for the user bandit28.'

'30: There is a git repository at ssh://[email protected]/home/bandit29-git/repo. The password for the user bandit29-git is the same as for the user bandit29.'

'31: There is a git repository at ssh://[email protected]/home/bandit30-git/repo. The password for the user bandit30-git is the same as for the user bandit30.'

'32: There is a git repository at ssh://[email protected]/home/bandit31-git/repo. The password for the user bandit31-git is the same as for the user bandit31.'

'33: After all this git stuff its time for another escape. Good luck!'

'34: At this moment, level 34 does not exist yet.'

