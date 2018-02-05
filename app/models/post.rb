class Post < ApplicationRecord
  belongs_to :user

  validates :name, :content, presence: true
  validates :name, length: { minimum: 2, maximum: 20 }
  validates :content, length: { minimum: 2, maximum: 120 }
end
