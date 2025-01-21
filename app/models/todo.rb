class Todo < ApplicationRecord
  validates :title, presence: true
  after_initialize :set_defaults, unless: :persisted?

  private

  def set_defaults
    self.completed ||= false
  end
end
