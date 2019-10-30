# Copyright 2019 The Ubuntu APT Mirror Docker
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# imitations under the License.

#!/bin/bash

# Setup proxy.
#export http_proxy="http://172.16.61.102:10809"
#export https_proxy="https://172.16.61.102:10809"

/bin/cp /etc/apt/mirror.list.18.04 /etc/apt/mirror.list
/usr/bin/apt-mirror > /var/spool/apt-mirror/var/sync.log

/bin/cp /etc/apt/mirror.list.16.04 /etc/apt/mirror.list
/usr/bin/apt-mirror >> /var/spool/apt-mirror/var/sync.log

/bin/cp /etc/apt/mirror.list.14.04 /etc/apt/mirror.list
/usr/bin/apt-mirror >> /var/spool/apt-mirror/var/sync.log
