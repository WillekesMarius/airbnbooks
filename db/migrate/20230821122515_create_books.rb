class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :year
      t.string :author
      t.text :overview
      t.string :genre
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
