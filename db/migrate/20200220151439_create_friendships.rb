class CreateFriendships < ActiveRecord::Migration[6.0]
  def change
    create_table :friendships do |t|

      t.belongs_to :monkey, foreign_key: true

      t.timestamps
    end
  end
end
