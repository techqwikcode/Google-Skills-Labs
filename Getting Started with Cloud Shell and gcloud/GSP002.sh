#!/bin/bash

# Enhanced Color Definitions
BLACK=$'\033[0;90m'
RED=$'\033[0;91m'
GREEN=$'\033[0;92m'
YELLOW=$'\033[0;93m'
BLUE=$'\033[0;94m'
MAGENTA=$'\033[0;95m'
CYAN=$'\033[0;96m'
WHITE=$'\033[0;97m'

NO_COLOR=$'\033[0m'
RESET=$'\033[0m'
BOLD=$'\033[1m'
UNDERLINE=$'\033[4m'

# Header Section
echo "${CYAN}${BOLD}╔════════════════════════════════════════════════════════╗${RESET}"
echo "${CYAN}${BOLD}         G STARTING NOW              ${RESET}"
echo "${CYAN}${BOLD}╚════════════════════════════════════════════════════════╝${RESET}"
echo
echo "${YELLOW}For more GCP tutorials, visit: ${UNDERLINE}https://www.youtube.com/@techqwikcode${RESET}"
echo
echo "${BLUE}${BOLD}⚡ Initializing GCE Lab Instance Setup...${RESET}"
echo

# User Input Section
echo "${GREEN}${BOLD}▬▬▬▬▬▬▬▬▬ INPUT PARAMETERS ▬▬▬▬▬▬▬▬▬${RESET}"
read -p "${YELLOW}${BOLD}ENTER ZONE (e.g., us-central1-a): ${RESET}" ZONE
echo
echo "${CYAN}Configuration Parameters:${RESET}"
echo "${WHITE}Zone: ${BOLD}$ZONE${RESET}"
echo

# Instance Creation
echo "${GREEN}${BOLD}▬▬▬▬▬▬▬▬▬ INSTANCE CREATION ▬▬▬▬▬▬▬▬▬${RESET}"

echo "${YELLOW}Creating gcelab2 instance...${RESET}"
gcloud compute instances create gcelab2 \
  --machine-type e2-medium \
  --zone $ZONE
echo "${GREEN}✅ gcelab2 instance created successfully!${RESET}"
echo

# Tag Configuration
echo "${GREEN}${BOLD}▬▬▬▬▬▬▬▬▬ TAG CONFIGURATION ▬▬▬▬▬▬▬▬▬${RESET}"

echo "${YELLOW}Adding http-server and https-server tags to instance...${RESET}"
gcloud compute instances add-tags gcelab2 \
  --zone $ZONE \
  --tags http-server,https-server
echo "${GREEN}✅ Tags added successfully!${RESET}"
echo

# Firewall Configuration
echo "${GREEN}${BOLD}▬▬▬▬▬▬▬▬▬ FIREWALL SETUP ▬▬▬▬▬▬▬▬▬${RESET}"

echo "${YELLOW}Creating HTTP firewall rule...${RESET}"
gcloud compute firewall-rules create default-allow-http \
  --direction=INGRESS \
  --priority=1000 \
  --network=default \
  --action=ALLOW \
  --rules=tcp:80 \
  --source-ranges=0.0.0.0/0 \
  --target-tags=http-server
echo "${GREEN}✅ HTTP firewall rule created successfully!${RESET}"
echo

# Completion Message
echo "${GREEN}${BOLD}╔════════════════════════════════════════════════════════╗${RESET}"
echo "${GREEN}${BOLD}          GCE LAB  COMPLETED SUCCESSFULLY!          ${RESET}"
echo "${GREEN}${BOLD}╚════════════════════════════════════════════════════════╝${RESET}"
echo
echo "${YELLOW}${BOLD}📺 Subscribe for more GCP content:${RESET}"
echo "${BLUE}${UNDERLINE}https://www.youtube.com/@techqwikcode${RESET}"
echo
echo "${MAGENTA}${BOLD}🚀 DO LIKE SHARE & SUBSCRIBE!${RESET}"