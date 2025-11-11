DIR="./$(date +%Y)/$(date +%m)"
FILE="$(echo $DIR)/$(date +%d).html"

mkdir -p $DIR
micro $FILE

if [ ! -e $FILE ]; then
    echo "> No file. Exiting..."
    exit 1
fi

git add .
git commit -m "Todays battle - $(date +%Y)/$(date +%m)/$(date +%d)"
git push
