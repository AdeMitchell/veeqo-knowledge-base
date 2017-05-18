class PagesController < ApplicationController
  def home
    @posts = Article.all
    @skills = Skill.all
  end

  def about
  end

  def contact
  end
end
