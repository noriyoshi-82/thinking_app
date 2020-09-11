class CreateFragments < ActiveRecord::Migration[6.0]
  def change
    create_table :fragments do |t|
      t.text :title,       null: false
      t.integer :genre,    null: false
      t.text :heading_a,   null: false
      t.text :heading_b
      t.text :heading_c
      t.text :heading_a_a
      t.text :heading_a_b
      t.text :heading_b_a
      t.text :heading_b_b
      t.text :heading_c_a
      t.text :heading_c_b
      t.integer :user_id,     null: false, foreign_key: true
      t.timestamps
    end
  end
end
