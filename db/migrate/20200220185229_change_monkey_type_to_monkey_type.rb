class ChangeMonkeyTypeToMonkeyType < ActiveRecord::Migration[6.0]
  def change

    remove_column :monkeys, :monkey_type
    add_column :monkeys, :monkeyType, :string


  end
end
