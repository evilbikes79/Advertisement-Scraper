class Advertisement < ActiveRecord::Base
  has_many :advertisement_responses
  has_many :responses, :through => :advertisement_responses
end
