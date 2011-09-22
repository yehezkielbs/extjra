require File.expand_path('../../../spec_helper', __FILE__)

describe Extjra::Model do
  it 'should return available model names' do
    Extjra::Model.available_models.should == %w( Customer Sale )
  end
end
