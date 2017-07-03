require 'rails_helper'

describe Task do

  it 'is private by default' do
    list = FactoryGirl.create(:list)
    task = FactoryGirl.create(:task)
    task.public?.should eq false
  end

  it 'converts the name to lowercase' do
    task = FactoryGirl.create(:task, :description => "Finagle the buffalo")
    task.description.should eq "Finagle the buffalo"
  end

end
