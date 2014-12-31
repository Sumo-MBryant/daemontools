require_relative '../../../kitchen/data/spec_helper'

describe 'source installed binaries' do
  describe file('/usr/local/bin/svscan') do
    it { should be_file }
    it { should be_executable }
  end

  describe file('/usr/local/bin/svc') do
    it { should be_file }
    it { should be_executable }
  end

  describe file('/usr/local/bin/svscanboot') do
    it { should be_file }
    it { should be_executable }
  end
end
