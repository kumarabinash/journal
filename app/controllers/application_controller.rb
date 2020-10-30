class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  add_flash_types :info, :error, :warning

  def after_sign_in_path_for(user)
    dashboard_path
  end
end
