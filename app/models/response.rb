class Response < ApplicationRecord
  validates :user_id, presence: true, uniqueness: true
  validates :answer_id, presence: true

  belongs_to :answer_choice,
    class_name: :Answer,
    primary_key: :id,
    foreign_key: :answer_id

  belongs_to :respondent,
    class_name: :User,
    primary_key: :id,  
    foreign_key: :user_id
end