#!/bin/sh
apt-get update
apt-get install hugo -y
make -f Makefile
