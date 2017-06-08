class User < ActiveRecord::Base
  has_many :questions
  has_many :answers
  has_many :comments

  validates :username, presence: true, uniqueness: true, length: {in: 6..20}
  validates :password, presence: true, length: {in: 6..12}


  has_secure_password

end
