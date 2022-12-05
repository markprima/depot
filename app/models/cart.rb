class Cart < ApplicationRecord
    has_many :line_items, dependent: :destroy
    def add_product(product)
        current_item = line_items.find_by(product_id: product.id)
        if current_item
            current_item.quantity += 1
            current_item.update(price: product.price)
        else
            current_item = line_items.build(product_id: product.id, price: product.price)
        end
        current_item
    end

    def total_price
        line_items.sum { |item| item.total_price }
    end

    # def decrease_quantity(product)
    #     current_item.decrement!(:quantity)
    # end 
      
    # def increase_quantity(product)
    #     current_item.decrement!(:quantity)
    # end
    #note: current_item masih belum bisa dipanggil dari method lain
end
