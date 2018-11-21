# Docker Symfony 4
#### Getting started
1. git clone the repo
2. `docker-compose build`
3. `docker-compose up -d`
4. `docker exec -it -u dev sf4_php bash`
5. `cd /home/wwwroot/sf4`
6. `composer create-project symfony/skeleton my-temp-folder`
7. `cp -Rf /home/wwwroot/sf4/my-temp-folder/. .`
8. `rm -Rf /home/wwwroot/sf4/my-temp-folder`
9. Run on your localhost: 

Special thanks for _Romaric Paul_ from [Medium]('https://medium.com/@romaricp/the-perfect-kit-starter-for-a-symfony-4-project-with-docker-and-php-7-2-fda447b6bca1')

Bonus : add portainer for graphical docker container manager