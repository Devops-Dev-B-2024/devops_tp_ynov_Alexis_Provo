# TP Docker 2

# Executer un serveur web (apache, nginx...) dans un container docker
- Récupérer l'image sur le docker hub (httpd ou nginx)
    - `docker pull nginx`

- Utiliser un commande pour verifier que vous disposez bien de l'image en local
    - `docker image ls | grep nginx`

- Créer un fichier dans votre repo local ./html/index.html qui contient "Hello World"
    - `mkdir html`
    - `echo "Hello World" > html/index.html`
