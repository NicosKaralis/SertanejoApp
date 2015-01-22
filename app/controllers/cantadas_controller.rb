class CantadasController < ApplicationController
  
  def create
    response = nil
    c = Cantada.new(from_user: params[:from].to_i, to_user: params[:to].to_i, content: params[:content])
    if c.save
      response = c
    else
      response = c.errors
    end
    
    respond_with response
  end

  def list
    response = {
      sent: Cantada.from_sender(params[:user_id].to_i),
      recieved: Cantada.to_reciver(params[:user_id].to_i)
    }
    respond_with response
  end
  
end
