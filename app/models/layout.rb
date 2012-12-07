class Layout < ActiveRecord::Base
  attr_accessible :config, :user_id
  belongs_to :user
end
