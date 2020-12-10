class AddSecondFlavorToWines < ActiveRecord::Migration[6.0]
  def change
    add_column :wines, :second_flavor, :integer, null: false
  end
end
