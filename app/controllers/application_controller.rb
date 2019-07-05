class ApplicationController < ActionController::Base
  before_action :authenticate_user!, :set_search
  layout :layout_by_resource

  private

  def set_search
    @q = Movie.order('created_at desc').ransack(params[:q])
  end

  def layout_by_resource
    if devise_controller?
      "devise"
    else
      "application"
    end
  end
end
