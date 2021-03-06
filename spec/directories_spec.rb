# Copyright 2015 Sergey Bahchissaraitsev

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at

#     http//www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'spec_helper'

describe 'airflow::directories' do
  let(:chef_run) { ChefSpec::SoloRunner.new.converge(described_recipe) }

  it 'creates airflow home' do
    expect(chef_run).to create_directory('/usr/local/lib/airflow')
  end

  it 'creates dags folder' do
    expect(chef_run).to create_directory('/usr/local/lib/airflow/dags')
  end

  it 'creates plugins folder' do
    expect(chef_run).to create_directory('/usr/local/lib/airflow/plugins')
  end

  it 'creates log folder' do
    expect(chef_run).to create_directory('/var/log/airflow')
  end

  it 'creates run folder' do
    expect(chef_run).to create_directory('/var/run/airflow')
  end
end