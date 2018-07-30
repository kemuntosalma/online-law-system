class CreateChapviis < ActiveRecord::Migration[5.2]
  def change
    create_table :chapviis do |t|
      t.text :section_number
      t.text :crime
      t.text :law

      t.timestamps
    end
  end
end
