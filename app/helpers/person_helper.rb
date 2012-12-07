module PersonHelper
  def friends_thumbs
    return @user.friends
  end
  def post_main_page(post)
    concat( render :template => '/person/post' , :locals => { :id => post.id ,:content => post.content , :comments =>post.comments ,:title => post.title , :time => post.updated_at} ) 
  end
  
  def comment_block(comment)
    concat( render :template => '/person/comment' , :locals => { :content => comment.content , :name => comment.user.name , :time => comment.updated_at } )
  end
  def friend_already
    friendflag = false
    if user_signed_in?
      if current_user.id != @user.id
        if current_user.friends.find_by_id(@user.id)!= nil
          friendflag = true
        end
      end
    end
    return friendflag
  end
  def not_friend_yet
    friendflag = false
    if user_signed_in?
      if current_user.id != @user.id
        result = current_user.friends.find_by_id(@user.id)
        puts "______________friend"
        puts result

        if result == nil
          friendflag =  true
        end
      end
    end
    return friendflag
  end
  def current_user_sign_in
    yestoedit = false
    if user_signed_in?
      puts "____________"
      puts current_user.id
      puts @id
      if current_user.id.to_s == @user.id.to_s 
        yestoedit = true
      end
    else

    end
    return yestoedit
  end
end
