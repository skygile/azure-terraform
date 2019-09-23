#!/bin/sh
# Deploys a simple Apache webpage with kittens as a service.
# http://www.castlesandmanorhouses.com/photos/barletta.jpg
# http://placekitten.com/800/600
# cd /tmp
apt-get -y update > /dev/null 2>&1
apt install -y apache2 > /dev/null 2>&1

cat << EOM > /var/www/html/index.html
<html>
  <head><title>Meow!</title></head>
  <body style="background-image: linear-gradient(red,orange,violet);">
  <center><img src="http://www.castlesandmanorhouses.com/photos/barletta.jpg"></img></center>
  <marquee><h1>The Citadel</h1></marquee>
  </body>
</html>
EOM

echo "Your demo is now ready."