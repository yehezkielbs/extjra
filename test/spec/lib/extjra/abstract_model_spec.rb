require File.expand_path('../../../spec_helper', __FILE__)

describe Extjra::AbstractModel do
  context 'when given resources name' do
    subject { Extjra::AbstractModel.new(:resources => 'sales') }

    its(:resources) { should == 'sales' }
    its(:model) { should == 'Sale' }
    its(:model_class) { should == Sale }
    it 'should know the columns' do
      subject.columns.should == Sale.columns
    end
    it 'should know the belongs_to associations' do
      subject.belongs_to_associations.should == Sale.reflect_on_all_associations(:belongs_to)
    end
  end
end
