# FROM adoptopenjdk/openjdk11:latest
FROM gradle:7.2.0-jdk11

COPY --chown=gradle:gradle . /home/gradle/src
WORKDIR /home/gradle/src
RUN gradle build

# gradle run -PfileName=hello
CMD ["gradle", "run", "-PfileName=hello"]
