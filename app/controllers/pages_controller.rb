class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index]

  def index
  end

  def profile
    @user = current_user
  end

end
