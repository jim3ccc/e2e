FROM nginx

# create a private dir for our key and certs dir for our certificate
RUN mkdir /etc/nginx/private /etc/nginx/certs

# copy over our html and css files to the container html directory that already exists in the nginx image
COPY static-site/index*  /etc/nginx/html/

# /etc/nginx/nginx.conf is the default location for nginx.conf 
COPY static-site/nginx.conf /etc/nginx/

# run openssl command to generate a self signed cert with our info
RUN openssl req -x509 -nodes -days 365 \
-subj "/C=CA/ST=BC/O=E2E/CN=e2e.com" \
-newkey rsa:2048 -keyout /etc/nginx/private/nginx-selfsigned.key \
-out /etc/nginx/certs/nginx-selfsigned.crt;