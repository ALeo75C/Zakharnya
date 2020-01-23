class AddCatigoryIdToProduct < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :catigory_id, :integer
  end
end
