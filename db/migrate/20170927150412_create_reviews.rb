class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :stars
      t.text :text
      t.belongs_to :book, foreign_key: true
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end

    add_index :reviews, [:book_id, :user_id], unique: true
  end
end
