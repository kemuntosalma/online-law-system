class CreateLawyers < ActiveRecord::Migration[5.2]
  def change
    create_table :lawyers do |t|
      t.text :name
      t.text :expertise
      t.integer :phone_number
      t.text :email_address

      t.timestamps
    end
  end
end
