require 'spec_helper'

feature "Posts" do
  it "can begin to create a new post" do
    visit root_path
    click_link 'New Post'
    find_field("Title")
    find_field("Body")
  end
end