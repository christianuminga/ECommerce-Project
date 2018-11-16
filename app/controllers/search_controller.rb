# frozen_string_literal: true

class SearchController < ApplicationController
  def index
  end

  def results
    if params[:category] == "" && params[:q] != nil && params[:orderBy] == "1"

      @products = Product.where('name LIKE ? OR description LIKE ?', "%#{params[:q]}%", "%#{params[:q]}%").order("name ASC").page(params[:page]).per(5)

    elsif params[:category] != nil && params[:q] == "" && params[:orderBy] == "1"

      @products = Product.where('category_id LIKE ?', "#{params[:category]}").order("name ASC").page(params[:page]).per(5)

    elsif params[:category] != nil && params[:q] != nil && params[:orderBy] == "1"

      @products = Product.where('(name LIKE ? OR description LIKE ?) AND category_id LIKE ?', "%#{params[:q]}%", "%#{params[:q]}%", "#{params[:category]}").order("name ASC").page(params[:page]).per(5)

    elsif params[:category] == "" && params[:q] != nil && params[:orderBy] == "2"

      @products = Product.where('name LIKE ? OR description LIKE ?', "%#{params[:q]}%", "%#{params[:q]}%").order("created_at DESC").page(params[:page]).per(5)

    elsif params[:category] != nil && params[:q] == "" && params[:orderBy] == "2"

      @products = Product.where('category_id LIKE ?', "#{params[:category]}").order("created_at DESC").page(params[:page]).per(5)

    elsif params[:category] != nil && params[:q] != nil && params[:orderBy] == "2"

      @products = Product.where('(name LIKE ? OR description LIKE ?) AND category_id LIKE?', "%#{params[:q]}%", "%#{params[:q]}%", "#{params[:category]}").order("created_at DESC").page(params[:page]).per(5)

    elsif params[:category] == "" && params[:q] != nil && params[:orderBy] == "3"

      @products = Product.where('name LIKE ? OR description LIKE ?', "%#{params[:q]}%", "%#{params[:q]}%").order("updated_at DESC").page(params[:page]).per(5)

    elsif params[:category] != nil && params[:q] == "" && params[:orderBy] == "3"

      @products = Product.where('category_id LIKE ?', "#{params[:category]}").order("updated_at DESC").page(params[:page]).per(5)

    elsif params[:category] != nil && params[:q] != nil && params[:orderBy] == "3"

      @products = Product.where('(name LIKE ? OR description LIKE ?) AND category_id LIKE?', "%#{params[:q]}%", "%#{params[:q]}%", "#{params[:category]}").order("updated_at DESC").page(params[:page]).per(5)

    end
  end
end
