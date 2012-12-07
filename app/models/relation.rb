class Relation < ActiveRecord::Base
  attr_accessible :relatied_id, :relating_id, :relation_type
  belongs_to :user , :foreign_key => :relatied_id , :class_name => "User"
  belongs_to :friend , :foreign_key => :relating_id , :class_name => "User"
 
end
