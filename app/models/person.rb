class Person < ActiveRecord::Base
  belongs_to :state
  belongs_to :city

  validates_presence_of [:first_name, :last_name]
end
