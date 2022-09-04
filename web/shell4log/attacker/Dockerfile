FROM korekontrol/ubuntu-java-python3

# Adding 'ctf-user' and Installing required tools
RUN useradd -m -s /bin/bash ctf-user && \
    echo 'ctf-user:pa55w0rd' | chpasswd && \
    apt update && \
    apt install ssh curl ncat net-tools coreutils -y

## Adding JNDIExploit
COPY --chown=ctf-user:ctf-user JNDIExploit /home/ctf-user/JNDIExploit

# Copying entrypoint file and setting up relevant permissions
COPY docker-entrypoint.sh /root/docker-entrypoint.sh
RUN chown root:root /root/docker-entrypoint.sh && \
    chmod 0740 /root/docker-entrypoint.sh

EXPOSE 22

ENTRYPOINT ["/bin/bash", "/root/docker-entrypoint.sh"]