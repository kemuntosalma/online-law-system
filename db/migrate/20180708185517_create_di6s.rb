class CreateDi6s < ActiveRecord::Migration[5.2]
  def change
    create_table :di6s do |t|
      t.text :s
      t.text :c
      t.text :l

      t.timestamps
    end
  end
end
