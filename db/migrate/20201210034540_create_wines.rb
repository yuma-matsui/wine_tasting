class CreateWines < ActiveRecord::Migration[6.0]
  def change
    create_table :wines do |t|
      t.string      :name,              null: false
      t.integer     :color_id,          null: false
      t.integer     :variety_id,        null: false
      t.integer     :country_id,        null: false
      t.date        :vintage,           null: false
      t.integer     :alcohol_volume_id, null: false
      t.integer     :impression_id,     null: false
      t.integer     :flavor_id,         null: false
      t.integer     :acidity_level_id,  null: false
      t.integer     :tannic_level_id
      t.text        :comment,           null: false
      t.references  :user,              null:false, foreign_key: true
      t.timestamps
    end
  end
end
