#!/bin/bash

# Update package list
apt-get update

# Install essential build tools and Bazel
apt-get install -y \
    build-essential \
    gdb \
    git \
    wget \
    curl \
    unzip \
    ca-certificates \
    gnupg \
    python3 \
    python3-pip


# Install bazelisk (universal Bazel launcher)
ARCH=$(uname -m)
if [ "$ARCH" = "x86_64" ]; then
    ARCH_SUFFIX="amd64"
elif [ "$ARCH" = "aarch64" ]; then
    ARCH_SUFFIX="arm64"
else
    echo "Unsupported architecture: $ARCH" >&2
    exit 1
fi

wget "https://github.com/bazelbuild/bazelisk/releases/download/v1.26.0/bazelisk-linux-$ARCH_SUFFIX" -O /usr/local/bin/bazelisk
chmod +x /usr/local/bin/bazelisk
ln -sf /usr/local/bin/bazelisk /usr/local/bin/bazel
bazel version

# Install buildifier
wget https://github.com/bazelbuild/buildtools/releases/download/v8.2.1/buildifier-linux-$ARCH_SUFFIX -O /usr/local/bin/buildifier
chmod +x /usr/local/bin/buildifier
