FROM alpine
ADD script.bash /bin/
RUN chmod +x /bin/script.bash
RUN wget -O nomad.zip https://releases.hashicorp.com/nomad/0.5.6/nomad_0.5.6_linux_amd64.zip && unzip nomad.zip && mv nomad /bin/ && chmod +x /bin/nomad/
RUN apk -Uuv add curl ca-certificates
ENTRYPOINT /bin/script.sh
