# docker-lamp

To RUN the container:
```
docker-compose up -d
```
Open phpmyadmin at http://localhost:8000 Open web browser to look at a simple php example at http://localhost:8001
To RUN mysql client:
```
docker-compose exec db mysql -u root -p
```

Check Version:
* openSSH: `sshd -V` or `ssh -V`
* 