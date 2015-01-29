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
  
  def atualizar_contatos
    params[:contato].each do |contato|
      Param.update_contato(contato, params[contato])
    end
  end
  
  def nova_cantada
    @c = CantadaTemplate.create(text: params[:new_text])
  end
  
  def novo_contato
    @c = Param.new_contato params[:key], params[:value]
  end
  
  def remover_cantada
    CantadaTemplate.delete params[:id]
    @id = params[:id].to_i
  end
  
  def remover_contato
    Param.delete params[:id]
    @id = params[:id].to_i
  end
  
  def update_biografia
    Param.biografia = params[:new_text]
    @new_text = params[:new_text]
  end
  
  def novo_album
    # Album.create(nome: "Sample album #{i}", release: Time.now - i.day, capa: 'empty', itunes_store: nil, play_store: nil)
  end
    
end
