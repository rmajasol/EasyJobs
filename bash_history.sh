# creamos la rama
git branch style

# nos cambiamos a la nueva rama
git checkout style

git add .
git commit -m "Styled the index view"

# vamos a la rama master y la mezclamos con lo que hicimos en la style
git checkout master
git merge style
git push