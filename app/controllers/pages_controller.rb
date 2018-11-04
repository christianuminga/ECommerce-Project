class PagesController < ApplicationController

  def index
    @products = Product.all.order("created_at desc").limit(5)
  end

  def permalink
    @page = Page.find_by(permalink: params[:permalink])
    
    if @page.nil?
      redirect_to root_url
    else
      render :show
    end
  end

  def show
    @page = Page.find(params[:id])
  end

end