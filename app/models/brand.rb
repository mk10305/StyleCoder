class Brand < ActiveRecord::Base
  has_many :itembrands
  has_many :items, :through => :itembrands

  validates :name, presence: true, uniqueness: true


end
