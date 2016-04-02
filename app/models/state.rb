class State < ActiveRecord::Base
  has_many :people
  has_many :cities

  validates :acronym, length: { is: 2 }
end
