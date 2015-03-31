require 'spec_helper'

describe "sign in" do
  before do
    User.create!(:email => "test@example.com", :password => "password")
  end

  it "can sign in successfully" do
    visit "/"
    click_link "Sign in"
    fill_in "Email", :with => "test@example.com"
    fill_in "Password", :with => "password"
    click_button "Sign in"
    page.should have_content("Signed in successfully.")
  end
end