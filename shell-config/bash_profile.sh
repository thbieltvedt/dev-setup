SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"


# Set user-defined locale
#export LANG=$(locale -uU)


BASH_RC_FILE=${SCRIPT_DIR}/bashrc.sh
alias bashrc='source "${BASH_RC_FILE}"'
# source the users bashrc if it exists
if [ -f "${BASH_RC_FILE}" ] ; then
	bashrc  
fi

### Includes ###
source ${SCRIPT_DIR}/bash_profile_variables.include.sh
source ${SCRIPT_DIR}/bash_profile_aliases.include.sh


### Path ###
# (Requires $JAVA_HOME and $GIT_HOME to be set in variables include)
export PATH=$PATH:$JAVA_HOME/bin:$GIT_HOME/cmd:$MVN_HOME/bin:$PLAY_HOME


### Java options ###
export _JAVA_OPTIONS="-Xms64m -Xmx128m"


### Maven options ###
export MAVEN_OPTS='-Xmx512m -XX:MaxPermSize=256m'