class Question < ApplicationRecord
validates :poll_id, presence: true, uniqueness: true 
validates :text, presence: true

belongs_to :poll,
class_name: :Poll, 
primary_key: :id,
foreign_key: :poll_id

has_many :answer_choices,
class_name: :Answer_Choice, 
primary_key: :id,    
foreign_key: :question_id 

end