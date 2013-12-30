SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

BASH_RC_FILE=${SCRIPT_DIR}/bashrc.sh
alias bashrc='source "${BASH_RC_FILE}"'
# source the users bashrc if it exists
if [ -f "${BASH_RC_FILE}" ] ; then
	bashrc  
fi


### Base directories ###
DEV_HOME=~/Development
DEV_SOFTWARE_HOME=${DEV_HOME}/Software
GIT_REPOSITORIES_HOME=${DEV_HOME}/Git-Repositories

### Home directories export ###
export   JAVA_HOME=$DEV_SOFTWARE_HOME/Java/jdk1.7.0_21
export    GIT_HOME=$DEV_SOFTWARE_HOME/Git/Git-1.7.11
export    MVN_HOME=$DEV_SOFTWARE_HOME/Maven/apache-maven-3.1.1
export   PLAY_HOME=$DEV_SOFTWARE_HOME/Play/play-2.1.1
export JREBEL_HOME=$DEV_SOFTWARE_HOME/JRebel/jrebel-5.1.2
export GRADLE_HOME=$DEV_SOFTWARE_HOME/Gradle/gradle-1.5


### Path ###
export PATH=$PATH:$JAVA_HOME/bin:$GIT_HOME/cmd:$MVN_HOME/bin:$GRADLE_HOME/bin:$PLAY_HOME


### Java options ###
#export _JAVA_OPTIONS="-Xms64m -Xmx128m"


### Maven options ###
export MAVEN_OPTS='-Xmx512m -XX:MaxPermSize=256m'


### Maven ###
alias mvni='mvn clean install -DskipTests=true'
alias mjr="mvn jetty:run"


### Git  ###
alias gpsh='git push'
alias gpl='git pull --ff-only'
alias gaa='git add .'
alias gco='git commit'
alias gch='git checkout'
alias gs='git status'


### Change directory aliases ###
alias    cd..="cd .."
alias  home="cd ~"
alias   dev="cd ${DEV_HOME}" 
alias   doc="cd ~/Documents"
alias    bc='cd ~/Bieltvedt\ Consulting' 
alias   gae='cd "${GOOGLE_APP_ENGINE_HOME}/bin"'
alias entio="cd ${DEV_HOME}/inphra-dev-projects/entiolab"
alias    gr="cd ${GIT_REPOSITORIES_HOME}"
alias    ds="cd ${GIT_REPOSITORIES_HOME}/dev-setup"
alias    ft="cd ${GIT_REPOSITORIES_HOME}/font-theater"
alias    ew="cd ${GIT_REPOSITORIES_HOME}/entio-web"
alias    br="cd ${GIT_REPOSITORIES_HOME}/bieltvedtrallysport.no"
alias    el="cd ${DEV_HOME}/inphra-dev-projects/entiolab"
alias    da="cd ${GIT_REPOSITORIES_HOME}/dummy-angular"
alias   poc="cd ${DEV_SOFTWARE_HOME}/POC"


alias   sshbr='ssh root@79.125.113.175 -i ~/"Private keys"/thb.pem'
alias   sshpoc='ssh root@46.137.74.84 -i ~/"Private keys"/thb.pem'

alias refresh="source ~/.bash_profile"

### Play framework aliases ###
alias pr="play run"
alias pc="play compile"
alias ps="play start"


### Cloudify
alias cloudify="sh /Users/torhaavard/Development/Software/POC/Cloudify/gigaspaces-cloudify-2.5.0-m7/bin/cloudify.sh"


### Shortcuts ###
alias run="sh run-app.sh"