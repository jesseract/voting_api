class Voter < ActiveRecord::Base
  has_many :votes
  has_one :api_key
end
