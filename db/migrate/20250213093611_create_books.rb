class CreateBooks < ActiveRecord::Migration[8.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :isbn
      t.text :description
      t.string :cover_photo
      t.boolean :available, default: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
