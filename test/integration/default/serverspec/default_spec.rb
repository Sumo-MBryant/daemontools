require_relative '../../../kitchen/data/spec_helper'

describe 'daemontools_service[test-service]' do
  describe file('/tmp/test-service/run') do
    it { should be_file }
  end

  describe port(2319) do
    it { should be_listening.with('tcp') }
  end
end

describe 'daemontools_service[nested-service-dir]' do
  describe file('/tmp/subdir/subdir/nested-service-dir/run') do
    it { should be_file }
  end

  describe port(2320) do
    it { should be_listening.with('tcp')}
  end
end
