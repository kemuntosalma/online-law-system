class CreateD5s < ActiveRecord::Migration[5.2]
  def change
    create_table :d5s do |t|
      t.integer :section_number
      t.text :crime
      t.text :law

      t.timestamps
    end
  end
end
