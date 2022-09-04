FROM rastasheep/ubuntu-sshd:latest

# Adding 'ctf-user'
RUN useradd -m -s /bin/bash ctf-user && echo 'ctf-user:pa55w0rd' | chpasswd

# Copying the flag and setting up relevant permissions
COPY flag.txt /home/ctf-user/flag.txt

# setting aliases on '.bashrc'
RUN echo alias cat=/bin/true >> /home/ctf-user/.bashrc && \
    echo alias less=/bin/true >> /home/ctf-user/.bashrc && \
    echo alias more=/bin/true >> /home/ctf-user/.bashrc && \
    echo alias grep=/bin/true >> /home/ctf-user/.bashrc && \
    echo alias egrep=/bin/true >> /home/ctf-user/.bashrc && \
    echo alias fgrep=/bin/true >> /home/ctf-user/.bashrc && \
    echo alias find=/bin/true >> /home/ctf-user/.bashrc && \
    echo alias vi=/bin/true >> /home/ctf-user/.bashrc && \
    echo alias vim=/bin/true >> /home/ctf-user/.bashrc && \
    echo alias nano=/bin/true >> /home/ctf-user/.bashrc && \
    echo alias python=/bin/true >> /home/ctf-user/.bashrc

# Enable ports
EXPOSE 22

# Changing working directory to ctf-user's HOME folder
WORKDIR /home/ctf-user