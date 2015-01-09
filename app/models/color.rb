class Color < ActiveRecord::Base
  has_many :itemcolors
  has_many :items, :through => :itemcolors 


 validates :name, presence: true, uniqueness: true
  

end
