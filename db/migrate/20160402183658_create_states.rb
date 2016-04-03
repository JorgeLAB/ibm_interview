class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :acronym, limit: 2
      t.timestamps null: false
    end

    add_index :states, :acronym, unique: true
  end
end
