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
# Install / configure simple node based mocks server
#

# ensure server directory is present
unless node['frontend-standard-stack']['mocks-server']['serve_dir'].nil?
    directory node['frontend-standard-stack']['mocks-server']['serve_dir'] do
        recursive true
        action :create
    end
end

# make command alias
magic_shell_alias 'http-server' do
    command "/usr/local/nvm/v#{ node['frontend-standard-stack']['node']['version'] }/lib/node_modules/http-server/bin/http-server"
    action :nothing
end

# install server library
bash 'install_http_server_lib' do
    code <<-EOH
        sudo npm install -g http-server -d > #{ node['frontend-standard-stack']['project']['log_dir'] }/npm_install.log 2>&1
    EOH
    notifies :create, 'magic_shell_alias[http-server]', :immediately
    not_if "which http-server"
end

