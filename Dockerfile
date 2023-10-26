# Use an Ubuntu base image
FROM ubuntu:apache2

sudo apt update

# Copy your custom index.html file to the Apache web root
COPY index.html /var/www/html/

# Expose port 80 for HTTP
EXPOSE 80

# Start Apache2 in the foreground
CMD ["apache2ctl", "-D", "FOREGROUND"]
