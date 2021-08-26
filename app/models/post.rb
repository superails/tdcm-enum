class Post < ApplicationRecord
  validates :title, presence: true

  validates :status, presence: true
  STATUSES = [:draft, :banned, :published].map(&:to_s).freeze
  validates :status, inclusion: { in: Post::STATUSES }

  scope :draft, -> { where(status: 'draft') }
  scope :banned, -> { where(status: 'banned') }
  scope :published, -> { where(status: 'published') }

  def draft?
    status == 'draft'
  end

  def banned?
    status == 'banned'
  end

  def published?
    status == 'published'
  end
  
  def to_s
    title
  end
end
