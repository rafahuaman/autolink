class CraeteFacebookPosts < ActiveRecord::Migration
  def change
    create_table :facebook_posts do |t|
      t.string :body
      t.string :external_id

      t.timestamps
    end
  end
end
