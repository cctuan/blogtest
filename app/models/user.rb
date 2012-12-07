class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :comment_id, :layout_id, :name, :post_id,:role 
  has_many :comments
  has_many :posts
  has_one :layout
  has_many :images 
  has_many :relations , :foreign_key => "relatied_id" , :class_name => "Relation" 
  has_many :friends , :through => :relations
end
