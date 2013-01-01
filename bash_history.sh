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

# nuevo commit
git add .
git commit -m "Styled some forms and generally cleaned things up"
git push

# para no instalar las gemas del grupo de produccion
# no hay que cambiar nada en database.yml
bundle install --without production

# creamos la aplicación en heroku
heroku create --stack cedar
# transferimos la clave
heroku keys:add ~/.ssh/id_rsa.pub
# copiamos de nuestro repo de github a heroku
git push heroku master

# ejecutamos la migración en heroku
heroku run rake db:migrate