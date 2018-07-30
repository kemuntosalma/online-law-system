class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.text :first_name
      t.text :second_name
      t.integer :phone_numbe
      t.text :email_address
      t.text :lawyer
      t.text :complaint

      t.timestamps
    end
  end
end
