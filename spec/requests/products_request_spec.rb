require "rails_helper"

RSpec.describe ProductsController, type: :request do
  it "handles the access of a missing product" do
    #product_path = "/products/notta-notta"
    get product_path("nothing-here!")
    #get product_path

    expect(response).to redirect_to(products_path)

     alert = "The product you're trying to view does not exist."
    expect(flash[:alert]).to eq alert
  end
end
