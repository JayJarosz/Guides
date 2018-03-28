# Enable color prompt
force_color_prompt=yes

# Variables: Colors
BLUE="\[\e[34m\]"
RED="\[\e[31m\]"
YELLOW="\[\e[33m\]"
DARK_GRAY="\[\e[90m\]"
LIGHT_GRAY="\[\e[37m\]"

# Variables: Other
RESET="\[\e[0m\]"
BOLD="\[\e[1m\]"
SYMBOL="\342\202\277" # UTF-8 octal code for BTC symbol (U+20BF)
# note: If locale isn't properly set on your Ubuntu operating system, 
# then the Bitcoin symbol will not properly display in the nano editor for .bashrc, 
# and your shell prompt will have wrapping issues.

# Escape sequences (guide for newbies)
#  \[...\] = non-printable sequences should be wrapped in this
#  \e = \033 = escape character
#  \t = time
#  \u = username
#  \w = current directory
#  \n = new line

# Pimp prompt (leave only one PS1 line uncommented)
# ADMIN user
PS1="${DARK_GRAY}\t ${debian_chroot:+($debian_chroot)}${BOLD}${RED}\u ${BOLD}${BLUE}\w ${RESET}${YELLOW}${SYMBOL} ${RESET}"
# BITCOIN user
# PS1="${DARK_GRAY}\t ${debian_chroot:+($debian_chroot)}${BOLD}${YELLOW}\u ${BOLD}${BLUE}\w ${RESET}${YELLOW}${SYMBOL} ${RESET}"
# debian default
# PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# Aliases
# Set "ls" to always use the -la option
alias ls='ls -la --color=always'