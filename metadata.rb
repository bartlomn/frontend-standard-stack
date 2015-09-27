# Cookbook Name:: frontend-standard-stack
#
# Copyright (C) 2015 Bart Nowak
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Configure stack for frontend projects
#


name             'frontend-standard-stack'
maintainer       'Bart Nowak'
maintainer_email 'bnowak@bnowak.com'
license          'Apache 2.0'
description      'Installs/Configures frontend-standard-stack'
long_description 'Installs/Configures frontend-standard-stack'
version          '0.1.4'


supports 'ubuntu'

depends 'apt', '~> 2.6.1'
depends 'git', '~> 4.3.3'
depends 'build-essential', '~> 2.2.3'
