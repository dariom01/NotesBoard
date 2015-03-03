class Board < ActiveRecord::Base
    validates :name, presence: true,
                    length: { minimum: 5 }
  has_many :sections, dependent: :destroy
  has_one :format
   has_many :notes, through: :sections
end
