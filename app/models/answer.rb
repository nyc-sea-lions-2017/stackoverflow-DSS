class Answer < ActiveRecord::Base
  belongs_to :user
  has_many :votes, as: :votable
  has_many :comments, as: :commentable
  belongs_to :question

  validates :answer, presence: true, length: {in: 20..500}
end
