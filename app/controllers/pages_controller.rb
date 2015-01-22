class PagesController < ApplicationController
  
  def home
    @discografia = Album.released
    @cantadas = CantadaTemplate.all
    @biografia = Param.biografia
    @contatos = Param.contatos
  end
  
end
