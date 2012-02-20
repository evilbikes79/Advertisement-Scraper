require 'nokogiri'  
require 'open-uri'  

class Search < ActiveRecord::Base

  has_many :responses
  
  #validation - will send errors back to controller
  validates(:keyword, :uniqueness => true, :length => { :minimum => 2, :maximum => 255 })
  
  # scope methods
  # This will create methods on the "Search" object which return records matching the below criteria
  # syntax in Rails 2 was named_scope
  # scope :long, where("char_length(keyword) > 5")
  # scope :recent, where("created_at > now() - interval '5 days' ")
  
  after_create lambda { |search| search.responses.create }

end
