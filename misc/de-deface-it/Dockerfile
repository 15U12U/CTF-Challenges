FROM nginx:latest

# Adding 'ctf-user' and Installing required tools
RUN useradd -m -s /bin/bash ctf-user && \
    echo 'ctf-user:pa55w0rd' | chpasswd && \
    apt update && \
    apt install cron vim nano ssh grep sudo unzip -y && \
    chmod 0766 /etc/nginx/nginx.conf && \
    mkdir -p /home/ctf-user/.backup

# Copying the flag and setting up relevant permissions
COPY flag.txt /home/ctf-user/flag.txt
RUN chown root:root /home/ctf-user/flag.txt && \
    chmod 0600 /home/ctf-user/flag.txt

# Copying script file and setting up relevant permissions
COPY script.sh /home/ctf-user/script.sh
RUN chown root:root /home/ctf-user/script.sh && \
    chmod 0774 /home/ctf-user/script.sh

# Copying crontab file and setting up relevant permissions
COPY script-crontab /etc/cron.d/script-crontab
RUN touch /var/log/cron.log && \
    chown root:root /etc/cron.d/script-crontab && \
    chmod 0751 /etc/cron.d/script-crontab

# Copying entrypoint file and setting up relevant permissions
COPY docker-entrypoint.sh /root/docker-entrypoint.sh
RUN chown root:root /root/docker-entrypoint.sh && \
    chmod 0740 /root/docker-entrypoint.sh

# Adding a Sample Website Template
COPY website /usr/share/nginx/html

# Adding Website Backup
COPY website-backup /home/ctf-user/.backup
RUN chown -R ctf-user:ctf-user /home/ctf-user/.backup && \
    chmod -R 0700 /home/ctf-user/.backup && \
    chmod -R 0777 /usr/share/nginx/html

# Edit sudoers file
RUN echo "ctf-user ALL=(root) /usr/sbin/service nginx restart" >> /etc/sudoers

# Open ports to outside
EXPOSE 80
EXPOSE 22

ENTRYPOINT ["/bin/bash", "/root/docker-entrypoint.sh"]
