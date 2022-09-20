# Global variables:
venvLoc="PyVenv" # Location of python virtual environments

# nvme health:
alias nvme-health='sudo nvme smart-log /dev/nvme1n1'

# Battery mode:
alias bat_thresh_on='echo 1 | sudo tee /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode > /dev/null && cat /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode'
alias bat_thresh_off='echo 0 | sudo tee /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode >> /dev/null && cat /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode'

# Reload zshrc:
alias reloadZshrc='source ~/.zshrc'

# apt & flatpak update
alias apt-flatpak-update='sudo apt upgrade && flatpak update'

alias shortwave_cache=" cd ~/.var/app/de.haeckerfelix.Shortwave/cache/Shortwave/recording" # Location of shortwave cache

# Disable ls folder highlights and alias exa
 LS_COLORS=$LS_COLORS:'ow=1;34:' ; export LS_COLORS
 alias lx='exa --icons'

# Edit files:
alias editZshrc='vim ~/Stuff/DotFiles/zshrc'
alias editVimrc='vim ~/Stuff/DotFiles/vimrc'

# Track ISS:
alias trackISS='curl --silent http://api.open-notify.org/iss-now.json | jq'

# Fix tilix:
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

# Open child instance of tilix:
alias tilixe='tilix -e'
# Open child instance of tilix for man pages:
alias tilman='tilix -e man'

# Make python virtual environment in ~/PyVenv:
pyVenvMake () { python3 -m venv ~/$venvLoc/$1 }  
# Activate python virtual environment in ~/PyVenv:
pyVenvActivate () { source ~/$venvLoc/$1/bin/activate }
# List python virtual environments in ~/PyVenv:
alias pyVenvList="ls ~/$venvLoc/"
# Go directly to python project directory:
jump2PyProj () { cd ~/Stuff/PythonPrograms/ }

# Make offline copy of webpage:
alias weboffline='wget -E -H -k -K -p' # https://www.gnu.org/software/wget/manual/wget.html

# Make notes
alias notes='vim ~/Stuff/Notes/notes.notes' 

# Zshrc plugins:
source ~/Github/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/Github/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Temporary:
