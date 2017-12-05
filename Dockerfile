FROM voxsupplychain/docker-alpine-java:jre8
MAINTAINER Todor Todorov <todor.todorov@tundra.com>

ENTRYPOINT ["java", "-jar", "/usr/share/podyn/podyn.jar"]

# Add Maven dependencies (not shaded into the artifact; Docker-cached)
# ADD target/lib           /usr/share/podyn/lib
# Add the service itself
ARG JAR_FILE
ADD target/${JAR_FILE} /usr/share/podyn/podyn.jar