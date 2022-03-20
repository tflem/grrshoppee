require "rails_helper"

RSpec.describe "Users can view products", type: :system do
  scenario "in detail" do
    product = FactoryBot.create(:product, name: "Whole Milk")

    visit "/"
    click_link "View Products"
    click_link "Whole Milk"
    expect(page.current_path).to eq product_path(product)
  end
end
