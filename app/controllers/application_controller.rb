class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception
  protect_from_forgery with: :null_session
  
  #http_basic_authenticate_with name: "gwii", password: "iiwg", except: :index
  before_filter :restrict_access, except: :index


  private
    def restrict_access
      authenticate_or_request_with_http_token do |token, options|      
        answer = ENV["SECRET_KEY_BASE"]
      end
    end
end
