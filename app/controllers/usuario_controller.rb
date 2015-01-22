class UsuarioController < ApplicationController
  
  def buscar
    response = User.buscar(params[:user_id], params[:s]) || {}
    
    respond_with response
  end
  
  def update
    response = nil
    u = User.where(fb_id: params[:user_id].to_i).first_or_initialize
    if u.update_attributes(foto_url: params[:foto_url], sexo: params[:s], nome: params[:nome])
      response = u
    else
      response = u.errors
    end
    
    respond_with response
  end
  
end
