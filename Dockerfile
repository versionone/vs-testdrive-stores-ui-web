############################################################
# Dockerfile to run Stores-UI containers
# Based on Nginx Image
############################################################

# Set the base image to use
FROM nginx

# Set the file maintainer
MAINTAINER Patrick Dunnigan

ADD stores-ui.tz /usr/share/nginx/html/

# Port to expose
EXPOSE 80
