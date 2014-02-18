class FacebookPost < ActiveRecord::Base
  include AutoLink

  auto_link :body
end
