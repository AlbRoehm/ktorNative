# Ktor Native Server

Example how to set up a Ktor Native server using the 2.0.0 EAP releases

To start the server, run `./gradlew runReleaseExecutableNative` or build it via `./gradlew nativeBinaries` or directly
via the Dockerfile into an image: 
```bash
 docker build -t ktor-native:latest .
```


# Hello World example

Add `kotlinc-native` to your classpath after it is downloaded (for free its
in `~/.konan/kotlin-native-prebuilt-macos-x86_64-1.6.0/bin`)
To compile the file manually run

```bash
kotlinc-native helloWorld.kt -o hello_world_mac
---
kotlinc-native -target linux helloWorld.kt -o hello_world_linux
```
