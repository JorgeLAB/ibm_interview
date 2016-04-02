class AddAcronymToStates < ActiveRecord::Migration
  def change
    add_column :states, :acronym, :string, limit: 2
  end
end
