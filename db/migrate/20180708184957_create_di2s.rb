class CreateDi2s < ActiveRecord::Migration[5.2]
  def change
    create_table :di2s do |t|
      t.text :s
      t.text :c
      t.text :l
      t.text :sa
      t.text :ca
      t.text :la
      t.text :sb
      t.text :cb
      t.text :lb
      t.text :sc
      t.text :cc
      t.text :lc

      t.timestamps
    end
  end
end
