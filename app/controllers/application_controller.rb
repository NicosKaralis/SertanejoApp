class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  
  def respond_with(response)
    respond_to do |format|
      format.json { render json: response }
      format.xml  { render xml: response }
    end
  end
end
