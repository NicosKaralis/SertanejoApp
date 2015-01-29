# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

@flashAlert = (element, message) ->
  $("##{element}").append("<div class='alert'>#{message}</div>")
  $("##{element} div.alert").delay( 2000 ).fadeOut 500, ->
    $(this).remove()
  
@removeTemplateCantada = (templateId) ->
  $("#cantadas li[data-tid=#{templateId}]").fadeOut 500, ->
    $(this).remove()

@removeContato = (contatoId) ->
  $("#contatos li[data-cid=#{contatoId}]").fadeOut 500, ->
    $(this).remove()
