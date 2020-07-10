RUN dnf install -y python3
COPY index.html /opt/index.html
EXPOSE 7000
WORKDIR /opt
ENTRYPOINT python3 -m http.server 7000
