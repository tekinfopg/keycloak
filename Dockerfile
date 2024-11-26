FROM quay.io/keycloak/keycloak:latest

# Set working directory
WORKDIR /opt/keycloak

# Gunakan port yang disediakan Cloud Run (via env variable `PORT`)
ENV KC_HTTP_PORT=80

# Expose port untuk container
EXPOSE 80

# Jalankan Keycloak dengan port dari `PORT`
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev", "--http-port=80"]
USER 0  # Jalankan container sebagai root