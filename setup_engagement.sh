#!/bin/sh
#Script to automate folder creation when setting up an engagement
asd() {
cat <<"AFM"
+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+ +-+-+-+-+-+
|A|u|t|o|m|a|t|i|c| |F|o|l|d|e|r| |M|a|k|e|r|
+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+ +-+-+-+-+-+
AFM
}
asd

echo "Welcome to automatic folder maker! How can I help?!"
echo "What is your root engagement directory? [Press ENTER When Complete]: "
read directory
cd $directory #switch to root engagement directory
echo "What is the client name and the date in the YYYYMM format (e.g. Clientname-201701. [Press ENTER When Complete]: "
read dirname
mkdir $dirname #make all the folders
cd $dirname
echo "Making Core Folders"
mkdir RoE
mkdir Reports
mkdir "Project Data"
mkdir "Escalations"
cd "Project Data"
#insert KeepNote generating code here, which apparently isn't a thing just yet due to keepnote lacking that functionality
#if you'd like to include anything extra in here, just add mkdir toolname
echo "Making Tool Folders"
mkdir burp
mkdir keepnote
mkdir metasploit
mkdir nmap
echo "All done!"

