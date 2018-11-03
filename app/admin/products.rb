ActiveAdmin.register Product do
    
permit_params :name, :description, :price, :stock, :category_id

end
