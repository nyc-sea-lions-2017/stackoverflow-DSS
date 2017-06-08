class Vote < ActiveRecord::Base
  belongs_to :votable, polymorphic: true
  belongs_to :user
  belongs_to :question
  belongs_to :comment
  belongs_to :answer

end
