class Itemcolor < ActiveRecord::Base
  belongs_to :item
  belongs_to :color
end
