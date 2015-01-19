class DataController < ApplicationController
  respond_to :xml, :json
  
  def datasource
    response = {
      discografia: Album.released,
      cantadas: Cantada.all.map(&:text),
      biografia: Param.biografia,
      contatos: Param.contatos_hash
    }
    respond_with({data: response})
  end
  
end
