class CreateTagsRelations < ActiveRecord::Migration
  def self.up
    create_table :tags_relations do |t|
      t.integer :post_id
      t.integer :tag_id

      t.timestamps
    end
  end

  def self.down
    drop_table :tags_relations
  end
end
