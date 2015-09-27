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
# Execute 'npm install' on the project dir
#

# Install node dependencies if project directory is provided
# and package.json is present
if File.file?( "#{ node['frontend-standard-stack']['project']['dir'] }/package.json" )
	bash 'install_node_modules' do
	    cwd node['frontend-standard-stack']['project']['dir']
	    code <<-EOH
            npm install -d > #{ node['frontend-standard-stack']['project']['log_dir'] }/npm_install.log 2>&1
	    EOH
    end
end
