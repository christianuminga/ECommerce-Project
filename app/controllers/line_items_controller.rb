class LineItemsController < InheritedResources::Base

  private

    def line_item_params
      params.require(:line_item).permit(:product_id, :caart_id)
    end
end

