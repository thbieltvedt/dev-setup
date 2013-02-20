### Maven ###
alias mvni='mvn clean install -DskipTests=true'

### Window specific ###
#alias git='git.cmd'
#alias play="play.bat"

### Git  ###
alias gpsh='git push'
alias gpl='git pull --ff-only'
alias gaa='git add .'
alias gco='git commit'
alias gch='git checkout'
alias gs='git status'

### Change directory ###
alias cd..="cd .."
alias cdhome="cd ~"
alias cddev="cd ${DEV_HOME}" 
alias cddoc="cd ~/Documents"
alias cdbc='cd ~/Bieltvedt\ Consulting' 

alias cdgae='cd "${GOOGLE_APP_ENGINE_HOME}/bin"'

alias cdentio="cd ${DEV_HOME}/inphra-dev-projects/entiolab"
alias cdblack="cd ${DEV_HOME}/inphra-dev-projects/inphra-black"
alias cdopen="cd ${DEV_HOME}/inphra-dev-projects/OpenJavaLib"

alias cdproj="cd ${DEV_HOME}/inphra-dev-projects"
alias cdgr="cd ${GIT_REPOSITORIES_HOME}"
alias cdft="cd ${GIT_REPOSITORIES_HOME}/font-theater"
alias cdew="cd ${GIT_REPOSITORIES_HOME}/entio-web"
alias cdbr="cd ${GIT_REPOSITORIES_HOME}/bieltvedtrallysport.no"
alias cdel="cd ${DEV_HOME}/inphra-dev-projects/entiolab"
alias cdpoc="cd ${DEV_HOME}/poc"

alias pr="play run"
alias pc="play compile"
alias ps="play start"
alias play20="${PLAY_2_0_HOME}/play"
alias pr20br="play20 -Denv_config_file=environment_dev_mac.conf run"


### Shortcuts ###
alias prbr="play -Dconf=environment_dev.conf run"