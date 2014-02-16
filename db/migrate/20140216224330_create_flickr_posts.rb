class CreateFlickrPosts < ActiveRecord::Migration
  def change
    create_table :flickr_posts do |t|
      t.string :caption
    end
  end
end
