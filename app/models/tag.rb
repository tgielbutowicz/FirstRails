class Tag < ActiveRecord::Base
  has_many :tags_relations
  has_many :posts, :through => :tags_raltions
end
