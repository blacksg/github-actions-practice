# 해당 이미지는 openjdk:11 이미지를 기반으로 한다.
FROM openjdk:11

# Dockerfile 내에서 사용할 변수 등록 (jar 파일 경로)
ARG JAR_FILE=build/libs/*-SNAPSHOT.jar

# Dockerfile이 있는 환경에서의 jar 파일을 컨테이너에 app.jar로 복사
COPY ${JAR_FILE} app.jar

# 컨테이너가 시작되고 수행할 동작을 JSON 배열 형태로 정의
ENTRYPOINT ["java", "-jar", "/app.jar"]