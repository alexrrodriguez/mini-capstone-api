class AddItemAmountToProduct < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :itemcount, :integer
  end
end
