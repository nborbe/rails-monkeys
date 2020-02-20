class ChangeFriendToFriendId < ActiveRecord::Migration[6.0]
  def change

    remove_column :friendships, :friend
    add_column :friendships, :friend_id, :integer



  end
end
