class Post < ActiveRecord::Base
  attr_accessible :content, :user_id
  belongs_to :user
  has_many :comments
  self.per_page = 5

  def self.create_thousand_posts
    1002.times do
      Post.create(:content => 'test#{Random.rand(100000)}',:user_id => 2)

    end
  end
  def self.delete_thousand_posts
    lastid = Post.last.id
    lastthousandid = lastid - 1000 

    deletePost =  Post.find_by_sql('select * from posts where id between '+lastthousandid.to_s + ' and '+lastid.to_s + ';')
    Post.delete(deletePost)
  end
end
