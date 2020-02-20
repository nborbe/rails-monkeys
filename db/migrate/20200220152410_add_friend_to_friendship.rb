class AddFriendToFriendship < ActiveRecord::Migration[6.0]
  def change
    add_column :friendships, :friend, :integer
  end
end
