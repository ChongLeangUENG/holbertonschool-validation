#!/bin/sh
FROM ubuntu:18.04
apt update
apt install hugo -y
make -f Makefile
