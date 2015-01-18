class DataController < ApplicationController
  respond_to :xml, :json
  
  def datasource
    response = {
      biografia: "Texto da biografia",
      discografia: Album.released,
      contato: {
        facebook: "handler_do_fb",
        twitter: "handler_do_twitter",
        instagran: "handler_do_instagran"
      },
      cantadas: [
        "texto das cantadas",
        "texto das cantadas",
        "texto das cantadas"
      ]
    }
    respond_with({data: response})
  end
  
end
