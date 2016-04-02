class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :company_name
      t.string :address
      t.string :county
      t.string :zip
      t.string :phone1
      t.string :phone2
      t.string :email
      t.string :web

      t.timestamps null: false
    end
  end
end
