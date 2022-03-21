FROM adoptopenjdk/openjdk11 as BUILD

COPY . /HG
WORKDIR /HG
RUN ./gradlew --no-daemon nativeBinaries

FROM ubuntu
EXPOSE 8080
COPY --from=BUILD /HG/build/bin/native/releaseExecutable/KtorNativeServer.kexe /KtorNativeServer
ENTRYPOINT ["/KtorNativeServer"]
