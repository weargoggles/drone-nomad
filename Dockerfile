FROM alpine
ADD script.bash /bin/
RUN chmod +x /bin/script.bash

RUN apk -Uuv add curl ca-certificates && update-ca-certificates

RUN curl -o nomad.zip https://releases.hashicorp.com/nomad/0.5.6/nomad_0.5.6_linux_amd64.zip && unzip nomad.zip && mv nomad /bin/ && chmod +x /bin/nomad/

ENTRYPOINT /bin/script.sh
