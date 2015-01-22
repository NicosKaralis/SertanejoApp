class DataController < ApplicationController
  
  def datasource
    response = {
      discografia: Album.released,
      cantadas: Cantada.all.map(&:text),
      biografia: Param.biografia,
      contatos: Param.contatos_hash
    }
    respond_with response
  end
  
end
