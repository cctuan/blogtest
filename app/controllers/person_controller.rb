class PersonController < ApplicationController
  include ImageHelper
  include PersonHelper 
  def show 
    userid = params[:userid] 
    @user = User.find(userid)
    @layout = @user.layout
    @posts = @user.posts.paginate(:page => params[:page],:per_page =>5).order('created_at DESC')
  end
  def newpost
    @userid = params[:userid]
    render :template => 'person/newpost' 
  end
  def profile
    render :template => 'person/profile'
  end
  def killrelation
    userid = params[:my] 
    friendid = params[:targ]
    relatio = current_user.relations.find_by_relating_id(friendid)
    Relation.delete(relatio.id)
    render :json => {}
  end
  def newrelation
    userid = params[:my] 
    friendid = params[:targ]
    Relation.create(:relatied_id => userid, :relating_id => friendid)
    render :json => {} 
  end
end
