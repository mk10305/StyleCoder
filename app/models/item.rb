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


  validates :cost, presence: true, numericality: true
  validates :name, presence: true
  validates :image, presence: true
  validates :fit, presence: true
  validates :season, presence: true
  validates :retailers, presence: true
  validates :colors, presence: true
  validates :events, presence: true
  validates :brands, presence: true
  validates :types, presence: true
  validates :notes, presence: true
  validates :description, presence: true

end
