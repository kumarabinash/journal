class TagsController < ApplicationController

  def index
    @tags = Tag.user_tags(current_user)
    respond_to do |format|
      format.json {}
    end
  end

  def create

  end
end