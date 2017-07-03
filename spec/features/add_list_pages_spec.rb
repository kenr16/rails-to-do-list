require 'rails_helper'

describe "the add a list process" do
  it "adds a new list" do
    visit lists_path

    click_link 'Sign up'
    fill_in 'user_email', :with => 'user@email.com'
    fill_in 'user_password', :with => 'hello'
    fill_in 'user_password_confirmation', :with => 'hello'
    click_on 'Sign Up'

    click_link 'New List'
    fill_in 'list_name', :with => 'Home stuff'
    click_on 'Create List'
    expect(page).to have_content 'Home stuff'
  end

  it "gives error when no name is entered" do

    visit lists_path

    click_link 'Sign up'
    fill_in 'user_email', :with => 'user@email.com'
    fill_in 'user_password', :with => 'hello'
    fill_in 'user_password_confirmation', :with => 'hello'
    click_on 'Sign Up'

    click_link 'New List'

    # visit new_list_path
    click_on 'Create List'
    expect(page).to have_content 'errors'
  end
end
