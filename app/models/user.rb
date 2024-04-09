class User < ApplicationRecord
  has_many :microposts
  validates :name, length: { minimum: 6 }, presence: true
  validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }


end
