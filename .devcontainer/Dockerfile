FROM cirrusci/flutter:latest

RUN flutter channel stable \
    && flutter upgrade

# Set ADB server forwarding (so you can run your app on host emulator)
ENV ADB_SERVER_SOCKET=tcp:host.docker.internal:5037
