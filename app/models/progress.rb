class Progress < ApplicationRecord
  belongs_to :content
  belongs_to :user

  validates :content, presence: true
  validates :user, presence: true
  validates :progress, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }
  validates :completed, inclusion: { in: [true, false] }

  before_save :update_completed_status

  private

  def update_completed_status
    self.completed = true if progress == 100
  end
end
