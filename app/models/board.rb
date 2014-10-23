class Board < ActiveRecord::Base
  has_many :sections
  has_one :format
end
