class ShopperController < ApplicationController
  include CurrentCart
  before_action :set_cart

  def index
    if params[:search].blank?  
      puts "search blank"
      @products = Product.order(:name)
    else  
      puts "search"
      puts params[:search]
      @products = Product.where('name LIKE ?', "%#{params[:search]}%")
    end 
    
  end

  def view
    @product =Product.find(params[:product_id])
  end

end
