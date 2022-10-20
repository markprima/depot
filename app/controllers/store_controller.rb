class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    # command `.order`to invoke all products alphabetically from title
  end 
end
