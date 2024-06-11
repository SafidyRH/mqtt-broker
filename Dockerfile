# Utilisez l'image officielle Rust comme image de base
FROM rust:latest

# Définissez le répertoire de travail
WORKDIR /mqtt-broker

# Copiez le reste de votre code source
COPY . .

# Compilez l'application en mode release
RUN cargo build --release --target=wasm32-wasi

# Définissez le point d'entrée de votre conteneur
CMD ["./target/release/mqtt_broker"]
