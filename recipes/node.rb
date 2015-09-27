#
# Cookbook Name:: frontend-standard-stack
# Recipe:: esentials
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
# Install / configure node.js through NVM
#

# install nvm
bash 'install_nvm' do
    code <<-EOF
        wget -qO- https://raw.githubusercontent.com/xtuple/nvm/master/install.sh | sudo bash
    EOF
    not_if "which nvm"
end

# download and activate node
bash "install_node_v#{ node['frontend-standard-stack']['node']['version'] }" do
    code <<-EOF
        nvm install v#{ node['frontend-standard-stack']['node']['version'] }
        nvm use v#{ node['frontend-standard-stack']['node']['version'] }
    EOF
    not_if "which node"
end
