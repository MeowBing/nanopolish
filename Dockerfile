FROM cuhkhaosun/base

WORKDIR /app

RUN git clone --recursive https://github.com/jts/nanopolish.git \
    && cd nanopolish \
    && make

ENV PATH="/app/nanopolish:${PATH}"


CMD ["bash"]

