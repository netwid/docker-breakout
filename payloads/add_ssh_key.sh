#!/bin/bash

mkdir -p ~/.ssh
cat id_rsa.pub >> ~/.ssh/authorized_keys
