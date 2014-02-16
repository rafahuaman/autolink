class FacebookPost < ActiveRecord::Base
  include LinkedBody

  cattr_accessor :body_attribute

  self.body_attribute = :caption
end
