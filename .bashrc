#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Reset
Color_Off='\e[0m'       # Text Reset

# Bold
BBlack='\e[1;30m'       # Black
BRed='\e[1;31m'         # Red
BGreen='\e[1;32m'       # Green
BYellow='\e[1;33m'      # Yellow
BBlue='\e[1;34m'        # Blue
BPurple='\e[1;35m'      # Purple
BCyan='\e[1;36m'        # Cyan
BWhite='\e[1;37m'       # White

alias ls='ls --color=auto'
PS1="\[$BGreen\]\u\[$BBlue\]@\[$BGreen\]\h \[$BBlue\]\W \[$BGreen\]\$ \[$Color_Off\]"
