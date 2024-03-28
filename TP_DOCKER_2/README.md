# TP Docker 2

# Executer un serveur web (apache, nginx...) dans un container docker
- Récupérer l'image sur le docker hub (httpd ou nginx)
    - `docker pull nginx`

- Utiliser un commande pour verifier que vous disposez bien de l'image en local
    - `docker image ls | grep nginx`

- Créer un fichier dans votre repo local ./html/index.html qui contient "Hello World"
    - `mkdir html`
    - `echo "Hello World" > html/index.html`

- Demarrer un nouveau container et servir la page html créée precedemment à l'aide d'une référence absolue
    - `docker run --name nginx -v /home/alexis/Ynov/B3/DevOps/devops_tp_ynov_Alexis_Provo/TP_DOCKER_1/html/:/usr/share/nginx/html -d -p 80:80 nginx`

- Supprimer le container
    - `docker stop CONTAINER_ID && docker rm CONTAINER_ID`

- Relancer le même container sans l'option -v puis utilisez la commande cp pour servir votre fichier (docker cp ARGS)
    - `docker run --name nginx -d -p 80:80 nginx`
    - `docker cp html/ dbdebc68ec13:/usr/share/nginx/`

# Builder une image
- A l'aide d'un Dockerfile, créer une image qui permet d'executer un serveur web (apache, nginx...)
    - Voir Dockerfile
    - `docker build -t nginx-dockerfile .`
    - `sudo docker run --name nginx-dockerfile -p 80:80 nginx-dockerfile`
