class Product < ApplicationRecord
    has_many :lineitems
    before_destroy(:check_lineitems_in_cart)

    validates( :name, :description, :image, presence: true)
    validates( :price, numericality: {greater_than_or_equal_to: 0.01})
    validates( :name, uniqueness: true)
    validates( :image, allow_blank: true, format: {with: %r{\.(gif|jpg|png)\Z}i, message: 'File must be GIF|JPG|PNG'})

    def check_lineitems_in_cart
        if self.lineitems.empty?
            return true
        else
            errors.add(:base, 'Items present in cart')
            return false
        end
    end
end
