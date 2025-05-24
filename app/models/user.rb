class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Associations
  has_many :progresses, dependent: :destroy
  has_many :contents, through: :progresses

  # Validations
  validates :email, presence: true, uniqueness: true
end
