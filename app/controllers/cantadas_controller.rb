class CantadasController < ApplicationController
  
  def create
    response = nil
    c = Cantada.new(from_user: params[:from], to_user: params[:to], content: params[:content])
    if c.save
      response = c
    else
      response = c.errors
    end
    
    respond_with response
  end

  def list
    respond_with Cantada.to_reciver(params[:user_id])
  end
  
end
