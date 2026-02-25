# Étape 1 : Utiliser une image Java
FROM eclipse-temurin:17-jdk


# Étape 2 : Copier le jar compilé dans le conteneur
COPY target/timesheet-devops-1.0.jar /app/timesheet.jar

# Étape 3 : Exposer le port de l’application (voir application.properties)
EXPOSE 8080

# Étape 4 : Lancer l’application
CMD ["java", "-jar", "/app/timesheet.jar"]

