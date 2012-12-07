class PostController < ApplicationController
# before_filter :authenticate_user!
  include PostHelper 
 

  def post 
    uid = params[:userid]
    content = params[:content] 
    c = Post.create(:content => content ,:user_id =>uid)
    redirect_to blog_path :userid => uid 
  end
end
