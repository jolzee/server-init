cd ~/myserver/
sudo docker run -d -v /var/run/docker.sock:/var/run/docker.sock -v $PWD/traefik.yml:/etc/traefik/traefik.yml -p 80:80  -l traefik.http.routers.router0.rule=Host('your.host.name') -l traefik.http.routers.router0.middlewares=auth -l traefik.http.middlewares.auth.basicauth.users=<username>:<encoded-password> -l traefik.port=8080 --network proxy --name traefik traefik:v2.1.3 --docker
sudo docker run -d \
    --name watchtower \
    -v /var/run/docker.sock:/var/run/docker.sock \
    containrrr/watchtower

sudo docker up -d
tmux new -s runn

