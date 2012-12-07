module CommentHelper
 def comment_bl(comment)
   render :json => { :result => render_to_string(:template  => 'person/comment' , :locals => { :content => comment.content , :name => comment.user.name , :time => comment.updated_at})}
  end

end
