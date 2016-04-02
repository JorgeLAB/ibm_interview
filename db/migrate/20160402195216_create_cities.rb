class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.name
      t.timestamps null: false
    end

    add_reference :cities, :state, index: true, foreign_key: true
  end
end
