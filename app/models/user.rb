class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, presence: true, uniqueness: true, format: { with: /\A[a-z\d]{4,}+\z/i }
  validates :email, uniqueness: true, format: { with: /.+@.+/ }
  validates :password, presence: true, format: { with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]{6,}+\z/i }

  has_many :wines
  has_many :favorites, dependent: :destroy
  has_many :favorite_wines, through: :favorites, source: :wine
end
