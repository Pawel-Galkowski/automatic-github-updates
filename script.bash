#!/bin/bash
DAY=$(date +'%d')
cd files/
rm *
FILE_NAME="new-file$DAY.js"
touch $FILE_NAME
cat <<EOL > $FILE_NAME 
$(date +'%m/%d/%Y')
Bash is powerful!
Javascript is better!
Doesn't matter! You use it in different situations...
EOL

cd ..
INDEX_FILE="index.txt"
NUMBER=$(cat $INDEX_FILE)
echo "$(($NUMBER+1))" > $INDEX_FILE

git remote add origin git@github.com:Pawel-Galkowski/automatic-github-updates.git
git add --all
git commit -m "powerfull day $($NUMBER)"
git push -u
