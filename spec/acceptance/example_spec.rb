require 'spec_helper_acceptance'

describe 'example' do
  let(:pp) { 'include example' }

  it 'applies with no errors' do
    apply_manifest(pp, catch_failures: true)
  end

  it 'applies a second time without changes' do
    apply_manifest(pp, catch_changes: true)
  end

  describe file('/tmp/puppet-example') do
    it { is_expected.to be_file }
    it { is_expected.to be_mode(644) }
    it { is_expected.to be_owned_by('root') }
    it { is_expected.to be_grouped_into('root') }
    its(:content) { is_expected.to eq('Hello World!') }
  end
end
