class CreateJoinTableAuthorBook < ActiveRecord::Migration[5.1]
  def change
    create_join_table :authors, :books do |t|
      t.index [:author_id, :book_id], unique: true
      t.index [:book_id, :author_id]
    end
  end
end
