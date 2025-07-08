FROM alpine:3.22
RUN apk add --no-cache \
  openssh-client \
  ca-certificates
RUN mkdir /root/.ssh &&\
    chmod 0700 /root/.ssh &&\
    ln -s /ssh-id-rsa/id_rsa /root/.ssh &&\
    ln -s /ssh-config/config /root/.ssh &&\
    ln -s /ssh-known-hosts/known_hosts /root/.ssh
