class CreateMonkeys < ActiveRecord::Migration[6.0]
  def change
    create_table :monkeys do |t|
      t.string :type
      t.string :species
      t.string :size
      t.string :socialOrder
      t.string :image
      t.string :name

      t.timestamps
    end
  end
end
