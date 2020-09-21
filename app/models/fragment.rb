class Fragment < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to_active_hash :genre
  has_many :comments
  has_many :users, through: :comments

  with_options presence: true do
    validates :title
    validates :genre
    validates :heading_a
  end
end
