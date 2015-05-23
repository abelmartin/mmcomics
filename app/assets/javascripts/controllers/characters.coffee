MMC.Collections ?= {}
class MMC.Collections.Characters extends Backbone.Collection
  url: ->
    if @name
      "#{MMC.apiRoot}/characters?apikey=#{MMC.apiKey}&name=#{@name}"
    else
      "#{MMC.apiRoot}/characters?apikey=#{MMC.apiKey}"

  initialize: (models, options={}) ->
    @name = options.name
    @offset = options.offset

  parse: (response) ->
    if response.code == 200
      response.data.results
    else
      []