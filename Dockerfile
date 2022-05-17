FROM --platform=linux/amd64 ubuntu:20.04

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y libtiff5-dev libtesseract-dev tesseract-ocr-eng build-essential cmake pkg-config make

ADD . /repo
WORKDIR /repo/build
RUN cmake ..
RUN make -j8
