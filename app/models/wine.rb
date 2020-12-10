class Wine < ApplicationRecord
  belogns_to :user
  has_one_attached :image, dependent: :destroy

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :acidity_level
  belongs_to_active_hash :alcohol_volume
  belongs_to_active_hash :color
  belongs_to_active_hash :country
  belongs_to_active_hash :flavor
  belongs_to_active_hash :impression
  belongs_to_active_hash :second_flavor
  belongs_to_active_hash :tannic_level
  belongs_to_active_hash :variety

  validates :name, :color, :variety, :country, :vintage, :alcohol_volume, :image, :impression, :flavor, :second_flavor, :acidity_level, :comment, presence: true
  validates :color_id, :variety_id, :country_id, :alcohol_volume_id, :impression_id, :falvor_id, :acidity_level_id, :tannic_level_id, :second_flavor_id, numericality: { other_than: 1, message: "を選択してください" }

end
