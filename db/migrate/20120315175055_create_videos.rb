class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :vendor_type
      t.integer :vendor_id
      t.string :title
      t.string :description
      t.string :url
      t.string :upload_date
      t.string :mobile_url
      t.string :thumbnail_small
      t.string :thumbnail_medium
      t.string :thumbnail_large
      t.string :user_name
      t.string :user_url
      t.string :user_portrait_small
      t.string :user_portrait_medium
      t.string :user_portrait_large
      t.string :user_portrait_huge
      t.integer :stats_number_of_likes
      t.integer :stats_number_of_plays
      t.integer :stats_number_of_comments
      t.integer :duration
      t.integer :width
      t.integer :height
      t.string :tags
      t.string :embed_privacy

      t.timestamps
    end
  end
end
