FROM alpine/git:latest AS builder # Using a minimal image with Git
RUN mkdir -p /home/app
WORKDIR /home/app
RUN git clone https://github.com/wimbletond/CMPT280.git # Clone the repository

FROM ubuntu:latest
WORKDIR /home/app
COPY --from=builder /app . # Copy the cloned content from the builder stage; This should get us the malware and test files

# Needed packages referenced from https://github.com/LaurieWired/linux_malware_analysis_container/blob/main/Dockerfile
RUN apt-get update && apt-get install -y \
    gdb \
    strace \
    ltrace \
    binwalk \
    yara \
    hexedit \
    hexer \
    wireshark \
    tcpdump \
    nmap \
    p7zip-full \
    upx-ucl \
    libimage-exiftool-perl \
    foremost \
    scalpel \
    binutils \
    elfutils \
    binutils \
    checksec \
    htop \
    cmake \
    gcc-multilib \
    g++-multilib \
    libc6-dbg \
    nasm \
    python3-pip \
    python3-dev \
    libssl-dev \
    libffi-dev \
    build-essential \
    manpages-dev \
    libgmp3-dev \
    libc6-i386 \
    libc6-dev-i386 \
    lib32ncurses5-dev \
    xinetd \
    netcat \
    git

#CMD ["/cmpt280_code/malware/trojan.py"]
