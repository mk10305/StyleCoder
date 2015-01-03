class Color < ActiveRecord::Base
  has_many :itemcolors
  has_many :items, :through => :itemcolors 

  

end
