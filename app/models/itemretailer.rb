class Itemretailer < ActiveRecord::Base
  belongs_to :item
  belongs_to :retailer
end
