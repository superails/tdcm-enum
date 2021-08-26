class Post < ApplicationRecord
  validates :title, presence: true

  validates :status, presence: true
  enum status: { draft: 'draft', tdcm: 'tdcm' }, _default: "tdcm"

  def to_s
    title
  end
end
