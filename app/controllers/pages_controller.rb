class PagesController < ApplicationController
  def home
    @posts = Blog.all
    @skills = Skill.all
  end

  def about
  end

  def contact
  end

  def news
    # @tweets = SocialTool.twitter_search
    # Need to register app with twitter, and add keys to somewhere.
  end
end
