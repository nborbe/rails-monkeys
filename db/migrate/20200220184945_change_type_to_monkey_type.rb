class ChangeTypeToMonkeyType < ActiveRecord::Migration[6.0]
  def change


    remove_column :monkeys, :type
    add_column :monkeys, :monkey_type, :string


  end
end
