
docker network create --subnet=192.168.0.0/24 spy-net
docker run --name sabilinkmysql --net spy-net --rm --ip 192.168.0.22 -e MYSQL_ROOT_PASSWORD=sabi_password -e MYSQL_DATABASE=sabilink_public -e MYSQL_USER=sabilink -e  MYSQL_PASSWORD=sabi_p -v $HOME/mysql-data:/var/lib/mysql -p 33060:3306 -d mysql:5.6.51
docker-compose up


# mysql --host=127.0.0.1 --port=33060 --user=sabilink --password=sabi_p sabilink_public
