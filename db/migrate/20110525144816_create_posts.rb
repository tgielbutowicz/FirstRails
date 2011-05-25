class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.timestamp :time
      t.text :content
      t.string :title
      t.timestamp :modified
      t.integer :parent
      t.string :type
      t.integer :comment_count
      t.integer :menu_orger
      t.boolean :post_status
      t.boolean :comment_status
      t.integer :user_id
      t.integer :views_count
      t.integer :likes_count
      t.integer :dislikes_count

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
