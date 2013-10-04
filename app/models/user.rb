class User < ActiveRecord::Base
  has_many :answers
  has_many :score_board
end
