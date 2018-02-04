class Post < ApplicationRecord
  belongs_to :user

  validates :name, :content, presence: true
  validates :name, length: { minimum: 2, maximum: 50 }
  validates :content, length: { minimum: 2, maximum: 250 }
end
