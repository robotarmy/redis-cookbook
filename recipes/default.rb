#
# Cookbook Name:: redis
# Recipe:: default
#
# Author:: Gerhard Lazu (<gerhard.lazu@papercavalier.com>)
# Author:: Curtis Schofield (<curtis@robotarmyma.de>)
#
# Copyright 2010, Paper Cavalier, LLC
# Copyright 2010, Curtis Schofield
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
# limitations under the License.
#
#
include_recipe "build-essential"
include_recipe "daemontools"
include_recipe "redis::source"
include_recipe "redis::daemon"
