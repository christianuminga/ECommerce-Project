class Cart < ApplicationRecord

    hasn_many :line_items, dependent: :destroy
end
