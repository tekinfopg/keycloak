FROM quay.io/keycloak/keycloak:latest

# Set working directory
WORKDIR /opt/keycloak

# Gunakan port yang disediakan Cloud Run (via env variable `PORT`)
ENV KC_HTTP_PORT=$PORT

# Expose port untuk container
EXPOSE 80

# Jalankan Keycloak dengan port dari `PORT`
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev", "--http-port=$PORT"]
USER 0  # Jalankan container sebagai root