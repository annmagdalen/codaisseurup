require "rails_helper"

describe "terms and conditions page" do
  it "returns terms and conditions page" do
    visit root_url
    click_on "Terms and Conditions"
    expect(page).to have_content "Terms & Conditions"
  end
end
