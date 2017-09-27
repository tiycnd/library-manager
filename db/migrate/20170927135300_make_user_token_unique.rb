class MakeUserTokenUnique < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :token, :string, unique: true
  end
end
