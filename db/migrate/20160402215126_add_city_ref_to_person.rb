class AddCityRefToPerson < ActiveRecord::Migration
  def change
    add_reference :people, :city, index: true, foreign_key: true
  end
end
