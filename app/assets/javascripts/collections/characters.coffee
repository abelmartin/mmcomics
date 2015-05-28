class MMC.Collections.Characters extends Backbone.Collection
  #This is odd, but I NEEDED to use the function here.
  model: (attrs, options) -> new MMC.Models.Hero(attrs, options)

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

  # sync: (method, model, options) ->
