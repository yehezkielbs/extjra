require File.expand_path('../../../spec_helper', __FILE__)

describe Extjra::MenuController do
  it 'get a list of available models' do
    get('controller', :format => 'js')
    response.headers['Content-Type'].should include 'text/javascript'
    assigns[:class_names].should == %w( Customer )
  end
end

