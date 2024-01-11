FROM wordpress:php8.0-apache
LABEL description="Esta é uma imagem Docker personalizada para portais do TJBA ..."
RUN rm -f /etc/apache2/sites-available/000-default.conf \
echo "<VirtualHost *:80>" >> /etc/apache2/sites-available/000-default.conf \
echo "    ServerAdmin webmaster@localhost" >> /etc/apache2/sites-available/000-default.conf \
echo "    DocumentRoot /var/www/html/$PORTAL" >> /etc/apache2/sites-available/000-default.conf \
echo "    Alias /$PORTAL /var/www/html/$PORTAL" >> /etc/apache2/sites-available/000-default.conf \
echo "    <Directory /var/www/html/$PORTAL/>" >> /etc/apache2/sites-available/000-default.conf \
echo "        Options Indexes FollowSymLinks" >> /etc/apache2/sites-available/000-default.conf \
echo "        AllowOverride All" >> /etc/apache2/sites-available/000-default.conf \
echo "        Require all granted" >> /etc/apache2/sites-available/000-default.conf \
echo "    </Directory>" >> /etc/apache2/sites-available/000-default.conf \
echo "</VirtualHost>" >> /etc/apache2/sites-available/000-default.conf
WORKDIR /var/www/html/$portal
