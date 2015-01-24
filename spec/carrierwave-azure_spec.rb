require 'spec_helper'

describe CarrierWave::Uploader::Base do
  it 'should define azure as a storage engine' do
    described_class.storage_engines[:azure].should == 'CarrierWave::Storage::Azure'
  end

  it 'should define azure options' do
    should respond_to(:azure_storage_account_name)
    should respond_to(:azure_storage_access_key)
    should respond_to(:azure_container)
    should respond_to(:azure_host)
  end
end
