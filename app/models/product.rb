class Product < ApplicationRecord

    validates :name, :description, :price, :stock, presence: true
    validates :name, length: { minimum: 3 }
    validates :description, length: {maximum: 500}
    validates :price, :stock, numericality: true

    mount_uploader :image, ImageUploader
    before_destroy :not_referenced_by_any_line_item

    belongs_to :category
    has_many :line_items

    private

    def not_refereced_by_any_line_item
        unless line_items.empty?
          errors.add(:base, "Line items present")
          throw :abort
        end
      end
end
