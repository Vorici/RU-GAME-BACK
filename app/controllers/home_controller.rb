class HomeController < ApplicationController
    
     # authenticate_user is now a resource you can use on any method to make sure the client is authorized
  before_action :authenticate_user,  only: [:auth]
  # Public method
  def index
    render json: { service: 'auth-api', status: 200 }
  end
 
  # Authorized only method
  def auth
    render json: { status: 200, user: "#{current_user.username}", user_id: "#{current_user.id}" }
  end
end
