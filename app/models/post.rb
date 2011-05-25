class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :tags_relations
  has_many :tags, :through => :tags_relations
  
  validates :title, :length => { :minimum => 1 }
end
