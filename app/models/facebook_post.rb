class FacebookPost < ActiveRecord::Base
  cattr_accessor :body_attribute

  self.body_attribute = :caption

  include LinkedBody
end
