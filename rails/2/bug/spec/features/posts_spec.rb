require 'spec_helper'

feature "Posts" do
  it "can create a new post" do
    visit "/"
    click_link "New Post"
    fill_in "Title", :with => "Hello world"
    fill_in "Body", :with => "This is the first post."
    click_button "Create Post"
    page.should have_content("Created post.")
  end

  it "can update an existing post" do
    post = Post.create({
      :title => "Hello world",
      :body => "This is the first post."
    })
    visit "/"
    click_link post.title
    fill_in "Title", :with => "Hello World"
    click_button "Update Post"
    page.should have_content("Updated post.")
  end
end