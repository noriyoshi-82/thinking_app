class Fragment < ApplicationRecord
  belongs_to :user

  with_options presence :true do
    validates :title
    validates :genre
    validates :heading_a
  end
end