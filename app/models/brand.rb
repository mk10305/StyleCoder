class Brand < ActiveRecord::Base
  has_many :itembrands
  has_many :items, :through => :itembrands


end
