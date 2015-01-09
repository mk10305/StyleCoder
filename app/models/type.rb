class Type < ActiveRecord::Base
  has_many :itemtypes
  has_many :items, :through => :itemtypes 

  validates :name, presence: true, uniqueness: true

end
