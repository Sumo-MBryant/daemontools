require_relative '../../../kitchen/data/spec_helper'

describe 'svscan' do
  describe service('svscan') do
    it { should_not be_running }
  end
end
