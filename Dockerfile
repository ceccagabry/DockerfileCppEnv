FROM ubuntu:focal
LABEL maintainer="gcecca" \
  description="c++ env for CircleCi." \
  version="0.1.0"
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Berlin
RUN apt-get update -y && \
    apt-get install -y tzdata
	
RUN apt-get install -y --no-install-recommends\
                    git \
                    curl \
                    gcc-9 \
                    g++ \
                    clang-10 \
                    build-essential \
                    cmake \
		    libboost-all-dev \
                    unzip \
                    tar \
                    ca-certificates && \
    apt-get autoclean && \
    apt-get autoremove && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
