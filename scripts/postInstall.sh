#set env vars
set -o allexport; source .env; set +o allexport;

#wait until the server is ready

docker-compose exec itop chown -R www-data:www-data /var/www/html/conf
docker-compose exec itop chown -R www-data:www-data /var/www/html/extensions
# docker-compose exec -T itop bash -c "a2enmod ssl && a2ensite default-ssl && a2enmod alias"
# docker-compose exec itop service apache2 restart

echo "Waiting for software to be ready ..."
sleep 30s;

# xvfb-run python3 ./install_finish.py

# sed -i -e "s/PHPMail/SMTP/g" /opt/app/conf/production/config-itop.php
# sed -i -e "/'email_transport'.*/a 'email_transport_smtp.host' => '172.17.0.1'," /opt/app/conf/production/config-itop.php
# sed -i -e "s/'email_default_sender_address'.*/'email_default_sender_address' => '[DOMAIN]@vm.elestio.app',/g" /opt/app/conf/production/config-itop.php