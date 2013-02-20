SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"


### Window specific ###
#export PATH=/usr/local/bin:/usr/bin:/cygdrive/c/Windows/system32:/cygdrive/c/Windows
#alias git='git.cmd'
#alias play="play.bat"


BASH_RC_FILE=${SCRIPT_DIR}/bashrc.sh
alias bashrc='source "${BASH_RC_FILE}"'
# source the users bashrc if it exists
if [ -f "${BASH_RC_FILE}" ] ; then
	bashrc  
fi

### Includes ###
source ${SCRIPT_DIR}/bash_profile_variables.include.sh


### Path ###
# (Requires $JAVA_HOME and $GIT_HOME to be set in variables include)
export PATH=$PATH:$JAVA_HOME/bin:$GIT_HOME/cmd:$MVN_HOME/bin:$PLAY_HOME


### Java options ###
export _JAVA_OPTIONS="-Xms64m -Xmx128m"


### Maven options ###
export MAVEN_OPTS='-Xmx512m -XX:MaxPermSize=256m'


### Maven ###
alias mvni='mvn clean install -DskipTests=true'


### Git  ###
alias gpsh='git push'
alias gpl='git pull --ff-only'
alias gaa='git add .'
alias gco='git commit'
alias gch='git checkout'
alias gs='git status'


### Change directory aliases ###
alias    cd..="cd .."
alias  cdhome="cd ~"
alias   cddev="cd ${DEV_HOME}" 
alias   cddoc="cd ~/Documents"
alias    cdbc='cd ~/Bieltvedt\ Consulting' 
alias   cdgae='cd "${GOOGLE_APP_ENGINE_HOME}/bin"'
alias cdentio="cd ${DEV_HOME}/inphra-dev-projects/entiolab"
alias cdblack="cd ${DEV_HOME}/inphra-dev-projects/inphra-black"
alias  cdopen="cd ${DEV_HOME}/inphra-dev-projects/OpenJavaLib"
alias  cdproj="cd ${DEV_HOME}/inphra-dev-projects"
alias    cdgr="cd ${GIT_REPOSITORIES_HOME}"
alias    cdds="cd ${GIT_REPOSITORIES_HOME}/dev-setup"
alias    cdft="cd ${GIT_REPOSITORIES_HOME}/font-theater"
alias    cdew="cd ${GIT_REPOSITORIES_HOME}/entio-web"
alias    cdbr="cd ${GIT_REPOSITORIES_HOME}/bieltvedtrallysport.no"
alias    cdel="cd ${DEV_HOME}/inphra-dev-projects/entiolab"
alias   cdpoc="cd ${DEV_HOME}/poc"


### Play framework aliases ###
alias pr="play run"
alias pc="play compile"
alias ps="play start"
alias play20="${PLAY_2_0_HOME}/play"
alias pr20br="play20 -Denv_config_file=environment_dev_mac.conf run"


### Shortcuts ###
alias run="sh run-app.sh"