class Fragment < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to_active_hash :genre
  has_many :comments, dependent: :destroy
  has_many :users, through: :comments
  has_many :users, through: :likes
  
  with_options presence: true do
    validates :title
    validates :heading_a
  end
  validates :genre_id, numericality: { other_than: 1}
end
