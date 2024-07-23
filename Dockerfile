FROM eclipse-temurin:17.0.4.1_1-jre
WORKDIR /app

COPY target/*.jar /app/app.jar

ENV JAVA_OPTS "-Xms512m -Xmx512m"
ENV APP_ARGS "-Dspring.config.location=/app/conf/application.properties "

EXPOSE 8082

CMD java $JAVA_OPTS $APP_ARGS -jar /app/app.jar