MMC.Collections ?= {}
class MMC.Collections.Characters extends Backbone.Collection
  url: ->
    if @name
      "#{MMC.apiRoot}/characters?apikey=#{MMC.apiKey}&name=#{@name}"
    else
      "#{MMC.apiRoot}/characters?apikey=#{MMC.apiKey}"

  defaults:
    name: null
    offset: 0

  initialize: (models, options={}) ->
    @name = options.name if options.hasOwnProperty('name')
    @offset = options.offset if options.hasOwnProperty('offset')

  parse: (response) ->
    if response.code == 200
      response.data.results
    else
      []