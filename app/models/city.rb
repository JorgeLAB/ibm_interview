class City < ActiveRecord::Base
  has_many :people
  belongs_to :state  
end
