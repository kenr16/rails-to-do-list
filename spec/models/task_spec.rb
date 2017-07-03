require 'rails_helper'

describe Task do
  task = FactoryGirl.create(:task)
  task.public?.should eq false
end
