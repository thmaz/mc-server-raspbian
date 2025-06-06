cd ~/mc-server-rasbian/mc-server-1.7.10/

cp -r world

# Add changes to git
git add .

# Commit changes
git commit -m "Automated backup on $(date)"

# Push changes to GitHub
git push origin main
