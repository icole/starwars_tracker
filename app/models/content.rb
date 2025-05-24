class Content < ApplicationRecord
  belongs_to :content_type
  has_many :progresses, dependent: :destroy
  has_many :users, through: :progresses

  validates :title, presence: true
  validates :release_date, presence: true
  validates :canonical_order, presence: true, numericality: { only_integer: true }
  validates :content_type, presence: true
end
