require "rails_helper"

RSpec.describe "Our users can create new products", type: :system do
  scenario "with valid attributes" do
    visit root_path

    click_link "Add Products"

    fill_in "Name", with: "Chocolate Milk"
    fill_in "Quantity", with: 2
    click_button "Create Product"

    expect(page).to have_content "Your product has been added."
  end
end