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
PATH_BASE="/data"
PATH_VERSION=("/18.04" "/16.04" "/14.04")
PATH_DIRS=("/mirror" "/var" "/skel")
for VERSION in ${PATH_VERSION[@]};
do
	for DIR in ${PATH_DIRS[@]};
	do
		FULL_PATH="${PATH_BASE}${VERSION}${DIR}"
		echo "Create directory ${FULL_PATH}"
		mkdir -p ${FULL_PATH}
	done
done

#/usr/bin/lsb_release -a
