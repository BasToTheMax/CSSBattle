FILE="./$(date +%Y)/$(date +%m)/$(date +%d).html"

micro $FILE

git add .
git commit -m "Todays battle - $(date +%Y)/$(date +%m)/$(date +%d)"
git push
