# Enable color prompt
force_color_prompt=yes

# Colors
RED="\[\e[31m\]"
GREEN="\[\e[32m\]"
YELLOW="\[\e[33m\]"
BLUE="\[\e[34m\]"
MAGENTA="\[\e[35m\]"
CYAN="\[\e[36m\]"
LIGHT_GRAY="\[\e[37m\]"
DARK_GRAY="\[\e[90m\]"

# Formatting
RESET="\[\e[0m\]"
BOLD="\[\e[1m\]"

# Symbols
BTC="\342\202\277" # UTF-8 octal code for BTC symbol (U+20BF)
LND="\342\232\241" # UTF-8 octal code for Lightning symbol (U+26A1)
SKULL="\342\230\240" # UTF-8 octal code for Skull & Bones symbol (U+2620)

# Escape sequences (guide for newbies)
#  \[...\] = non-printable sequences should be wrapped in this
#  \e = \033 = escape character
#  \t = time
#  \u = username
#  \w = current directory
#  \n = new line

# Pimp prompt (leave only one PS1 line uncommented)
# ADMIN user
PS1="${DARK_GRAY}\t ${debian_chroot:+($debian_chroot)}${BOLD}${GREEN}\u ${BOLD}${BLUE}\w ${RESET}${YELLOW}${BTC} ${RESET}"
# BITCOIN user
# PS1="${DARK_GRAY}\t ${debian_chroot:+($debian_chroot)}${BOLD}${YELLOW}\u ${BOLD}${BLUE}\w ${RESET}${YELLOW}${BTC} ${RESET}"
# ROOT user
# PS1="${DARK_GRAY}\t ${debian_chroot:+($debian_chroot)}${BOLD}${RED}\u ${BOLD}${BLUE}\w ${RESET}${RED}${SKULL} ${RESET}"
# debian default
# PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# Aliases
# Set "ls" to always use the -la option
alias ls='ls -la --color=always'