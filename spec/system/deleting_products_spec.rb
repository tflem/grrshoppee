require "rails_helper"

RSpec.describe "Users can delete products", type: :system do
  scenario "without a hitch" do
    FactoryBot.create(:product, name: "Skim Milk")

    visit "/"
    click_link "View Products"
    click_button "Delete"

    expect(page).to have_content "Your product has been deleted."
    expect(page.current_path).to eq products_path
    expect(page).to have_no_content "Skim Milk"
  end
end
