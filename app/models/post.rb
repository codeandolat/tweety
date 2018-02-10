class Post < ApplicationRecord
  acts_as_votable

  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :name, :content, presence: true
  validates :name, length: { minimum: 2, maximum: 20 }
  validates :content, length: { minimum: 2, maximum: 120 }

  scope :order_by_last, -> { order(created_at: :desc) }
end
