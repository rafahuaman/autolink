class Tweet < ActiveRecord::Base
  include LinkedBody

  belongs_to :twitter_account
end
