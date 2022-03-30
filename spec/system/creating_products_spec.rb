require "rails_helper"

RSpec.describe "Users can add products", type: :system do
  before do
    product = FactoryBot.create(:product, name: "Skim Milk")

    visit "/"
    click_link "Add Products"
  end

  scenario "with valid attributes" do
    fill_in "Name", with: "Chocolate Milk"
    fill_in "Quantity", with: 2
    click_button "Create Product"

    expect(page).to have_content "Your product has been added."

    choc_milk = Product.find_by!(name: "Chocolate Milk")
    expect(page.current_path).to eq product_path(choc_milk)

    show_title = "Chocolate Milk - Products - Grr . . . Shoppee"
    expect(page).to have_title show_title
  end

  scenario "with name uniqueness" do    
    fill_in "Name", with: "Skim milk"
    fill_in "Quantity", with: 2
    click_button "Create Product"

    expect(page).to have_content "Name already exists"
  end

  scenario "with invalid attributes" do
    click_button "Create Product"

    expect(page).to have_content "Your product has not been added."
    expect(page).to have_content "Name can't be blank"
    expect(page).to have_content "Quantity can't be blank"
  end
end
