class FlickrPost < ActiveRecord::Base
  include AutoLink

  auto_link :caption, :as => :body
end
