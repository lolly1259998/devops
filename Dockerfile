# Utiliser l'image OpenJDK 17 slim comme base
FROM openjdk:17-jdk-slim

# Copier le fichier JAR généré dans le conteneur
COPY target/kaddem-0.0.1-SNAPSHOT.jar app.jar

# Exposer le port utilisé par ton application Spring Boot
EXPOSE 8089

# Spécifier le point d'entrée du conteneur pour démarrer l'application
ENTRYPOINT ["java", "-jar", "/app.jar"]

