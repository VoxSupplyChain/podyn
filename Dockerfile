FROM voxsupplychain/docker-alpine-java:jre8
LABEL Author Todor Todorov <todor.todorov@tundra.com>

# entry point with the basic set 
ENTRYPOINT ["java", "-jar", "/usr/share/podyn/podyn.jar"]

ARG JAR_FILE
ADD target/${JAR_FILE} /usr/share/podyn/podyn.jar