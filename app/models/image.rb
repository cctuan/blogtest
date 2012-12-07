class Image < ActiveRecord::Base
  attr_accessible :image_content_type, :image_file_name, :image_file_size, :image_updated_at, :user_id, :album ,:image
  belongs_to :user 
  has_attached_file :image,
                    :styles => { :large => "640x640>",
                                :medium => "400x400>",
                                :thumb => "100x100>"}
end
