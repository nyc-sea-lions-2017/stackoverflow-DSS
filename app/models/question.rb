class Question < ActiveRecord::Base
  belongs_to :user
  has_many :votes, as: :votable
  has_many :comments, as: :commentable
  has_many :answers

  validates :question, presence: true, length: {in: 20..500}

end
