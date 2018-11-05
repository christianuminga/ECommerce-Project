ActiveAdmin.register User do

permit_params :name, :address, :province_id
end
