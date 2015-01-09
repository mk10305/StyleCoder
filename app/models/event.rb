class Event < ActiveRecord::Base
  has_many :itemevents
  has_many :items, :through => :itemevents

  validates :name, presence: true, uniqueness: true
end
