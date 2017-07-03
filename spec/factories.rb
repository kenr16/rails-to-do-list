FactoryGirl.define do
  factory(:list) do
    name('Household tasks')
  end

  factory(:task) do
    description('Knit the sock monkey')
    list_id(1)
  end
end
