class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.string :author
      t.string :author_mail
      t.string :author_ip
      t.timestamp :date
      t.text :content
      t.boolean :approved
      t.integer :post_id

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
