class HomeController < ApplicationController
  include ApplicationHelper
  layout "application"
  def index
    @mostRecentUsers = mostRecentUser(3)
    @mostRecentPosts = mostRecentPost(3)
    @mostRecentImages = mostRecentImage(3)
  end
  def intro

  end
end
