class CreateDivi2s < ActiveRecord::Migration[5.2]
  def change
    create_table :divi2s do |t|
      t.text :section_number
      t.text :crime
      t.text :laws
      t.text :section_numbr
      t.text :crme
      t.text :lws
      t.text :secton_number
      t.text :crim
      t.text :law

      t.timestamps
    end
  end
end
