# Set user-defined locale
export LANG=$(locale -uU)

# source the users bashrc if it exists
if [ -f "${HOME}/.bashrc" ] ; then
  source "${HOME}/.bashrc"
fi

### Includes ###
source bash_profile_variables.include
source bash_profile_aliases.include


### Path ###
# (Requires $JAVA_HOME and $GIT_HOME to be set in variables include)
export PATH=$PATH:$JAVA_HOME/bin:$GIT_HOME/cmd:$MVN_HOME/bin:$PLAY_HOME


### Java options ###
export _JAVA_OPTIONS="-Xms64m -Xmx128m"


### Maven options ###
export MAVEN_OPTS='-Xmx512m -XX:MaxPermSize=256m'