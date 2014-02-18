class Tweet < ActiveRecord::Base
  include AutoLink

  belongs_to :twitter_account

  auto_link :body, :on => [:mentions, :hashtags]

end
