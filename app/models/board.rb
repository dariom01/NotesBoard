class Board < ActiveRecord::Base
  has_many :sections, dependent: :destroy
  has_one :format
end
