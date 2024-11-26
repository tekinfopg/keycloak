# Gunakan Keycloak sebagai base image
FROM quay.io/keycloak/keycloak:latest

# Set working directory
WORKDIR /opt/keycloak

# Expose port untuk Keycloak
EXPOSE 80

# Command untuk menjalankan Keycloak dalam mode development
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev"]