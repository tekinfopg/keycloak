FROM quay.io/keycloak/keycloak:latest

# Set working directory
WORKDIR /opt/keycloak

# Gunakan port dinamis yang diberikan Cloud Run
ENV KC_HTTP_PORT=$PORT

# Expose port yang digunakan dalam aplikasi
EXPOSE 8080

# Jalankan Keycloak menggunakan port yang diberikan oleh Cloud Run
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev", "--http-port=$PORT"]
