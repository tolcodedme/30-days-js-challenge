#!/bin/bash


if [ -z "$1" ]
then
    echo "Day Number ?"
    read -r DAY
else 
    DAY=$1
fi 

FOLDER="day-$DAY"

echo "> Project Title ?"
read -r TITLE

if [ -d "$FOLDER" ]; then
  echo "⚠️ Le dossier $FOLDER existe déjà."
  exit 1
fi

mkdir "$FOLDER"


cat << EOF > $FOLDER/index.html
<!DOCTYPE html>
<!-- Coding by Tol - JS Project (Day $DAY) -->
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>$TITLE</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

    <h1>DAY $DAY CHALLENGE - $TITLE EN JAVASCRIPT</h1>
    
    <script src="script.js" defer></script>
</body>
</html>
EOF

cat <<EOF > $FOLDER/style.css
/* DAY $DAY - $TITLE */
/* Project Settings */
@import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap');

*{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
}

body {
  font-family: "Montserrat", system-ui, sans-serif;
  min-height: 100vh;
  width: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
}

/* Project Code  */
...
EOF

echo "console.log('DAY $DAY - Javascript Challenge - $TITLE');" > $FOLDER/script.js

cat << EOF > $FOLDER/README.md
# Day $DAY CHALLENGE - $TITLE EN JAVASCRIPT

🎯 Objectif :
- ...

🛠️ Concepts :
- DOM
- Events
- ...

🚀 Résultat :
- ...
EOF