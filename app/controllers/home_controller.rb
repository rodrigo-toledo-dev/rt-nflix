class HomeController < ApplicationController
  def index
    @genres = Genre.order(:name)
    @profiles = current_user.profiles
  end
end
