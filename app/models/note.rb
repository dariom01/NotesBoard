class Note < ActiveRecord::Base
  belongs_to :section
  validates :body, presence: true,
            length: { minimum: 1 }
end
