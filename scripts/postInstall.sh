#set env vars
set -o allexport; source .env; set +o allexport;

#wait until the server is ready

echo "Waiting for software to be ready ..."

docker-compose exec itop chown -R www-data:www-data /var/www/html/conf
docker-compose exec itop chown -R www-data:www-data /var/www/html/extensions

sleep 30s;