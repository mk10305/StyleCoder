class Item < ActiveRecord::Base
  has_many :itemcolors
  has_many :colors, :through => :itemcolors

  has_many :itemevents
  has_many :events, :through => :itemevents 

  has_many :itemtypes
  has_many :types, :through => :itemtypes

  has_many :itembrands
  has_many :brands, :through => :itembrands
  
  has_many :itemretailers
  has_many :retailers, :through => :itemretailers

  mount_uploader :image, PictureUploader


 
end
