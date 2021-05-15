class MainController < ActionController::Base

  def index
    render json: "{invalid_json}"
  end
end