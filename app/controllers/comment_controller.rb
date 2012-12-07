class CommentController < ApplicationController
 include CommentHelper 
 

  def post 
    cmtid = params[:postid]
    po = Post.find(cmtid)
    pid = po.id
    uid = current_user.id 
    val = params[:v]

    c = Comment.create(:content => val ,:post_id =>pid ,:user_id => uid)
    comment_bl(c)
   

  end
end
