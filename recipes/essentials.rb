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
# Install / configure essential elements of the stack
#

# packages update
include_recipe 'apt::default'

# install git
include_recipe 'git::default'

# install build-essential
include_recipe 'build-essential::default'

# ensure log directory is present
unless node['frontend-standard-stack']['project']['log_dir'].nil?
    directory node['frontend-standard-stack']['project']['log_dir'] do
        :create
    end
end
