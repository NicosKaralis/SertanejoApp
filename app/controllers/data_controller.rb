class DataController < ApplicationController
  
  def datasource
    response = {
      discografia: Album.released,
      cantadas: CantadaTemplate.all,
      biografia: Param.biografia,
      contatos: Param.contatos_hash
    }
    respond_with response
  end
  
end
