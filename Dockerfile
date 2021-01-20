FROM alpine:3.11
RUN apk add --no-cache \
  openssh-client \
  ca-certificates
RUN mkdir /root/.ssh
RUN chmod 0700 /root/.ssh
RUN ln -s /ssh-id-rsa/id_rsa /root/.ssh
RUN ln -s /ssh-config/config /root/.ssh
RUN ln -s /ssh-known-hosts/known_hosts /root/.ssh
