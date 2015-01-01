class Retailer < ActiveRecord::Base
  has_many :itemretailers
  has_many :items, :through => :itemretailers
end
