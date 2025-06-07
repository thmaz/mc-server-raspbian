#!/bin/bash 

# Stop the Minecraft server
screen -S minecraft -p 0 -X stuff "stop$(echo -ne '\r')"

# Wait for the server to stop completely
sleep 10

# Navigate to the backup repository
cd ~/mc-server-rasbian/mc-server-1.7.10/

# Copy the files/folder to the repository
cp -r world

# Add changes to git
git add .

# Commit changes
git commit -m "Automated backup on $(date)"

# Push changes to GitHub
git push origin main

# Start the Minecraft server in a detached screen session
screen -dmS minecraft java -jar server.jar nogui
