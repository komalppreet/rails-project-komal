class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @items = @category.items
  end
end
  def index
    # Your code for retrieving and handling categories
  end

  def search
    @query = params[:query]
    @category_id = params[:category]

    @results = if @category_id.present?
                 Category.find(@category_id).products.search(@query)
               else
                 Product.search(@query)
               end
  end


