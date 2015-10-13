class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string     :name,         null: false
      t.string     :title,        null: false
      t.text       :body,         null: false
      t.datetime   :published_at, null: false
      t.references :category,     null: false, foreign_key: true, index: true

      t.timestamps null: false
    end

    add_index :posts, [:name], unique: true
  end
end
