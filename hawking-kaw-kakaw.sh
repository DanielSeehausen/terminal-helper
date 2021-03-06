curl https://raw.githubusercontent.com/rcaloras/bash-preexec/master/bash-preexec.sh -o ~/.bash-preexec.sh
curl https://rawgit.com/DanielSeehausen/terminal-helper/master/hawking-kaw-kakaw.sh

touch ~/.invoke-stephen.sh
getSrcFile="source ~/.bash-preexec.sh"
getExecFile="source ~/.invoke-stephen.sh"
stephenFunc="preexec() { say \$1; }"
stephenAlias="alias stephenPlease='source ~/.invoke-stephen.sh'"

echo $getSrcFile >> ~/.invoke-stephen.sh
echo $stephenFunc >> ~/.invoke-stephen.sh
echo $stephenAlias >> ~/.profile
echo $stephenAlias >> ~/.bash_profile
echo source ~/.bash_profile

echo "
-------------------------------------------------------------------
ENTER THE COMMAND: 'stephenPlease' TO RECEIVE HELP FROM MR. HAWKING
-------------------------------------------------------------------"


