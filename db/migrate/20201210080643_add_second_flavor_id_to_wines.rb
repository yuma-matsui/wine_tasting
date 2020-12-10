class AddSecondFlavorIdToWines < ActiveRecord::Migration[6.0]
  def change
    add_column :wines, :second_flavor_id, :integer, null: false
  end
end
