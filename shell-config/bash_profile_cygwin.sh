### Cygwin/Windows specific modifications ###
export PATH=/usr/local/bin:/usr/bin:/cygdrive/c/Windows/system32
alias git='git.cmd'
alias play="play.bat"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source ${SCRIPT_DIR}/bash_profile.sh