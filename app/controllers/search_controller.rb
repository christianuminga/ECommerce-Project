class SearchController < ApplicationController
  def index
  end

  def results
    if params[:category] == "" && params[:q] != nil

      @products = Product.where('name LIKE ?', "%#{params[:q]}%").page(params[:page])

    elsif params[:category] != nil && params[:q] == ""

      @products = Product.where('category_id LIKE ?', "#{params[:category]}").page(params[:page])

      @param = params[:category]

    elsif params[:category] != nil && params[:q] != nil

      @products = Product.where('name LIKE ? AND category_id LIKE?', "%#{params[:q]}%", "#{params[:category]}").page(params[:page])

    end
  end
end
