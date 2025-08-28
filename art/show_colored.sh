#!/usr/bin/env bash

# Simple ANSI-colored preview of the plane flying to a waving Pakistani flag.
# Run with:  bash art/show_colored.sh

GREEN='\033[92m'
WHITE='\033[97m'
GRAY='\033[90m'
RED='\033[91m'
PINK='\033[95m'
RESET='\033[0m'

printf "%b\n" "${WHITE}to: you — with love${RESET}"
printf "\n"
printf "%s\n" "      ~   .     ~     .      ~     .      ~    .   ~   ."
printf "%s\n" "        .    ~     .    ~      .     ~       .     ~   ."
printf "\n"

# Plane + heart contrail (more detailed)
printf "%b\n" "${WHITE}                   __|__${RESET}"
printf "%b\n" "${WHITE}            .-----/==+==\\-----.${RESET}"
printf "%b\n" "${WHITE}        __/______/|${GRAY}_o_o_${WHITE}|\\______\\__${RESET}"
printf "%b\n" "${WHITE}       /____|   / |  ${GRAY}_  ${WHITE} | \\   |____\\\\${RESET}"
printf "%b\n" "${WHITE}            \\__/  | |_| |  \\__/${RESET}"
printf "%b\n" "${WHITE}              \\     ${GRAY}___${WHITE}     /${RESET}"
printf "%b\n" "${WHITE}               '---/___\\---'${RESET}"
printf "%b\n" "${GRAY}        ---o--o-(${WHITE}__${GRAY})---o--o---${RESET}    ${PINK}<3  <3  <3  <3${RESET}"
printf "%b\n" "${GRAY}                           ~    ~      ~     ~${RESET}"
printf "%b\n" "${GRAY}                              ------------------------------->${RESET}"
printf "\n"

# Flag (waving): pole in gray, white bar, green field, white crescent + star
pad='                                     '
printf "%b\n" "${pad}${GRAY}│ ${WHITE}██ ${GREEN}██████████████${RESET}"
printf "%b\n" "${pad}${GRAY}│  ${WHITE}██ ${GREEN}██████████████${RESET}"
printf "%b\n" "${pad}${GRAY}│   ${WHITE}██ ${GREEN}█████████████${RESET}"
printf "%b\n" "${pad}${GRAY}│   ${WHITE}██ ${GREEN}█████${WHITE}☾${GREEN}███████${RESET}"
printf "%b\n" "${pad}${GRAY}│   ${WHITE}██ ${GREEN}████████${WHITE}★${GREEN}████${RESET}"
printf "%b\n" "${pad}${GRAY}│  ${WHITE}██ ${GREEN}██████████████${RESET}"
printf "%b\n" "${pad}${GRAY}│   ${WHITE}██ ${GREEN}█████████████${RESET}"
printf "%b\n" "${pad}${GRAY}│__${WHITE}|${GRAY}_|____________________${RESET}"
printf "\n"

printf "%b\n" "${WHITE}p.s.${RESET} sending you ${WHITE}love${RESET}, ${WHITE}care${RESET}, and a flirty tailwind — keep that smile for me ${RED}<3${RESET}"
printf "%b\n" "${WHITE}[ a + you ]${RESET}"
