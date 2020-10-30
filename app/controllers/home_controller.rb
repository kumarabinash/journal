class HomeController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:index, :profile]
  def index
  end

  def profile
  end

end