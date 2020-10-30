class TagsController < ApplicationController

  def index
    @tags = Tag.user_tags
  end

  def create

  end
end