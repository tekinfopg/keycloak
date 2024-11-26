FROM quay.io/keycloak/keycloak:latest

# Set working directory
WORKDIR /opt/keycloak

# Gunakan port 80 untuk Keycloak
ENV KC_HTTP_PORT=80

# Expose port 80
EXPOSE 80

# Jalankan Keycloak dengan parameter untuk port 80
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev", "--http-port=80"]
USER 0  # Jalankan container sebagai root