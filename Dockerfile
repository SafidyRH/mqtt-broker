# Utilisez l'image officielle Rust comme image de base
FROM rust:latest

# Définissez le répertoire de travail
WORKDIR /app

# Téléchargez les dépendances de Rust
RUN cargo fetch

# Copiez le reste de votre code source
COPY . .

# Compilez l'application en mode release
RUN cargo build --release

# Définissez le point d'entrée de votre conteneur
CMD ["./target/release/mqtt_broker"]
