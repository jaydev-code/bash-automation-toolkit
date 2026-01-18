#!/bin/bash

NC='\033[0m'
BLUE='\033[0;34m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
echo -e "${BLUE}===== Systen Information ====="
echo -e "${GREEN}hostname      : ${RED}$(hostname)"
echo -e "${GREEN}uptime        : ${RED}$(uptime -p )"
echo -e "${GREEN}User Login    : ${RED}$(whoami)"
echo -e "${GREEN}date & Time   : ${RED}$(date)"
echo -e "${BLUE}======  Mermory Status  ======${NC}"
echo -e "${BLUE}$(free -h )"
echo -e "${BLUE}====== DIsk Info =======${NC}"
echo -e "${BLUE}$(df -h | grep C )${NC}  "
echo -e "${BLUE}$( df -h | grep /dev/sdd )${NC}"
echo -e "${BLUE}$( df -h | grep drivers )${NC}"


