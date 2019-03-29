class Poll < ApplicationRecord
  validates :author_id, presence: true, uniqueness: true

  belongs_to :author,
  class_name: :User,
  primary_key: :id,
  foregin_key: :author_id

  has_many :questions,
  class_name: :Question,
  primary_key: :id,
  foregin_key: :poll_id

end
