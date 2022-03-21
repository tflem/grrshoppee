require "rails_helper"

RSpec.describe "Users can edit existing products", type: :system do
  before do
    FactoryBot.create(:product, name: "Whole Milk")

    visit "/"
    click_link "View Products"
    click_button "Edit"
  end
  scenario "with valid attributes" do
    fill_in "Name", with: "Chocolate Milk"
    fill_in "Quantity", with: 4
    click_button "Update Product"

    expect(page).to have_content "Your product has been updated."
    expect(page).to have_content "Chocolate Milk"
  end
  scenario "with invalid attributes" do
    fill_in "Name", with: ""
    fill_in "Quantity", with: ""
    click_button "Update Product"

    expect(page).to have_content "Your product has not been updated."
  end
end
