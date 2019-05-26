FROM cirrusci/flutter:latest

# RUN flutter channel stable \
#     && flutter upgrade
ADD setup-flutter.sh /setup-flutter.sh

# Set the default shell to bash rather than sh
ENV SHELL /bin/bash

# Set ADB server forwarding (so you can run your app on host emulator)
ENV ADB_SERVER_SOCKET=tcp:host.docker.internal:5037
