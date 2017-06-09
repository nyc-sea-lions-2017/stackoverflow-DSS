20.times do
  User.create!(username: Faker::Internet.user_name(6..8),
               password: Faker::Lorem.characters(10)
               )
end

10.times do
  Question.create!(question: Faker::Lorem.characters(20..50),
                    question_detail: Faker::Lorem.characters(25..200),
                    user_id: rand(20),
                    commentable_id: rand(1..10),
                    commentable_type: "question",
                    votable_id: rand(1..10),
                    votable_type: "question")
end

7.times do
  Answer.create!(answer: Faker::Lorem.characters(20..200),
                 question_id: rand(10),
                 user_id: rand(20),
                 commentable_id: rand(11..20),
                 commentable_type: "answer",
                 votable_id: rand(11..20),
                 votable_type: "answer")
end

20.times do
  Comment.create!(comment: Faker::Lorem.characters(5..30),
                  user_id: rand(10),
                  votable_id: rand(21..30),
                  votable_type: "comment")
end

30.times do
  Vote.create!(value: 1,
               user_id: rand(20)
               )
end
