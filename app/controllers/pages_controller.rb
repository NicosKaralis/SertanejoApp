class PagesController < ApplicationController
  
  def home
    @discografia = Album.released
    @cantadas = Cantada.all
    @biografia = Param.biografia
    @contatos = Param.contatos
  end
  
end
