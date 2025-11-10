DIR="./$(date +%Y)/$(date +%m)"
FILE="$(echo $DIR)/$(date +%d).html"

mkdir $DIR
micro $FILE

git add .
git commit -m "Todays battle - $(date +%Y)/$(date +%m)/$(date +%d)"
git push
