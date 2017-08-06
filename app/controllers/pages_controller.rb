class PagesController < ApplicationController
  def home
    @posts = Blog.all
    @skills = Skill.all
  end

  def about
    @skills = Skill.all
    @skillsTotal = @skills.sum('time_spent')
  end

  def contact
  end

  def news
    @tweets = SocialTool.twitter_search
  end
end
