class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :fragments, dependent: :destroy
  has_many :comments,  dependent: :destroy
  has_many :fragments, through: :comments
  has_many :fragments, through: :likes, dependent: :destroy

  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze
  validates_format_of :password, with: PASSWORD_REGEX, message: 'Include both letters and numbers'
  validates :nickname, presence: true

  def self.guest
    find_or_create_by(email: 'test@sampl.jp') do |user|
      user.password = '111aaa'

    end
  end
end
