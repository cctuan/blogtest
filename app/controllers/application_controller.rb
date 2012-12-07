class ApplicationController < ActionController::Base
  protect_from_forgery
  skip_before_filter :verify_authenticity_token, :except => [:create]
  
  def current_account
    puts session[:current_user] 
    session[:current_user]
  end

  def after_sign_in_path_for(resource)
    blog_path :userid => resource.id
  end
end
