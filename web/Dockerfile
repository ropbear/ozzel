#written by stonepresto
FROM nginx:latest

# Move the HTML over
COPY html/* /ozzel/

# Now the configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# And finally the keys.
COPY www.ozzel.com.key /etc/nginx/
COPY www.ozzel.com.crt /etc/nginx/

COPY update.sh /
COPY entrypoint.sh /

ENTRYPOINT /entrypoint.sh

