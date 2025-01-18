#!/bin/bash

# ASCII Art for Purple Theme
echo -e "\e[35m"  # Set text color to purple
cat << "EOF"
 ██████   ██████   █████████   █████   █████ █████ ██████   ██████    ███████    ███████████ 
░░██████ ██████   ███░░░░░███ ░░███   ░░███ ░░███ ░░██████ ██████   ███░░░░░███ ░░███░░░░░███
 ░███░█████░███  ░███    ░███  ░███    ░███  ░███  ░███░█████░███  ███     ░░███ ░███    ░███
 ░███░░███ ░███  ░███████████  ░███████████  ░███  ░███░░███ ░███ ░███      ░███ ░██████████ 
 ░███ ░░░  ░███  ░███░░░░░███  ░███░░░░░███  ░███  ░███ ░░░  ░███ ░███      ░███ ░███░░░░░░  
 ░███      ░███  ░███    ░███  ░███    ░███  ░███  ░███      ░███ ░░███     ███  ░███        
 █████     █████ █████   █████ █████   █████ █████ █████     █████ ░░░███████░   █████       
░░░░░     ░░░░░ ░░░░░   ░░░░░ ░░░░░   ░░░░░ ░░░░░ ░░░░░     ░░░░░    ░░░░░░░    ░░░░░        
                                            
EOF
echo -e "\e[0m"  # Reset text color

# Clone and setup the Oversee repository
echo -e "\e[35m💜 Cloning the Oversee repository...\e[0m"
git clone https://github.com/hydren-dev/Oversee.git

# Navigate into the repository folder
echo -e "\e[35m💜 Navigating into the Oversee directory...\e[0m"
cd Oversee

# Install dependencies
echo -e "\e[35m💜 Installing dependencies...\e[0m"
npm install

# Seed the database
echo -e "\e[35m💜 Seeding the database...\e[0m"
npm run seed

# Create a new user
echo -e "\e[35m💜 Creating a new user...\e[0m"
npm run createUser

# Start the application
echo -e "\e[35m💜 Starting the Oversee application...\e[0m"
node .

echo -e "\e[35m💜 Setup complete! Enjoy using Oversee. 💜\e[0m"
