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
    <link rel="stylesheet" href="./settings.css">
    <link rel="stylesheet" href="./style.css">
    <script type="text/javascript" src="script.js" defer></script>
</head>
<body>

    <h1>DAY $DAY CHALLENGE - $TITLE EN JAVASCRIPT</h1>
    
     <div class="signature">
        <span style="font-style: italic;">by</span>
        <p class="author">Tol Coded-me</p>
    </div>
</body>
</html>
EOF

cat <<EOF > $FOLDER/settings.css
/* DAY $DAY - $TITLE */
/* Project Settings */
@import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;0,500;0,600;0,700;0,800;0,900;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');

* {
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}

:root{
  --primary-color : #F2BF26 ;
  --black-color: #121110;
  --white-color: #F2F0E9;
  --gray : #32312D;
  --gray-light: #A6A194;
  --gray-dark: #0D0C0C;
}

body {
  font-family: "Poppins", sans-serif;
  min-height: 100vh;
  width: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
  background-color: var(--gray);
  flex-direction: column;
  position: relative;
}

.signature{
  text-align: center;
  color: var(--primary-color);
  position: absolute;
  right: 35px;
  bottom: 20px;
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 5px;
}

.signature span {
  font-size: 14px;
}
.author{
  font-weight: 600;
}

EOF

cat << EOF > $FOLDER/style.css
/* Project Code  */
h1{
  color: var(--gray-light);  
}

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