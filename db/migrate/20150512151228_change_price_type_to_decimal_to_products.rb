class ChangePriceTypeToDecimalToProducts < ActiveRecord::Migration
  def up
    change_column :products, :price, :decimal, :precision => 6, :scale => 2, null: false
  end

  def down
    # Either change the column back, or mark it as irreversible with:
    change_column :products, :price, :float
  end
end
