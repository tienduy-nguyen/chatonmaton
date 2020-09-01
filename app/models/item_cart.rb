class ItemCart < ApplicationRecord
  belongs_to :cart
  belongs_to :item, optional: true
  
end

