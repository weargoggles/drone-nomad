FROM debian:stable-slim

RUN apt-get update && apt-get install -y curl unzip && rm -rf /var/lib/apt/lists/*

RUN curl -o nomad.zip https://releases.hashicorp.com/nomad/0.5.6/nomad_0.5.6_linux_amd64.zip && unzip nomad.zip && mv nomad /bin/ && chmod +x /bin/nomad

ADD script.sh /bin/
RUN chmod +x /bin/script.sh

CMD ["/bin/script.sh"]
