FROM ubuntu:18.04
MAINTAINER Canonical
RUN apt update && apt upgrade -y
RUN apt install -y apache2 apache2-utils python-virtualenv
RUN python3 -m pip install Flask
COPY index.html /var/www/html/
COPY FlaskApi /var/www/
EXPOSE 80 
CMD ["apache2ctl", "-D", "FORGROUND"]
