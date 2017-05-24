require "rails_helper"

describe "About Page" do
  it "shows about page" do
    visit root_url
    click_on "About"

    expect(page).to have_content "This app was built in 2017"
  end
end
