class MMC.Models.Hero extends Backbone.Model
# MMC.Models.Hero = Backbone.Model.extend
  initialize: (attributes, options) ->
    @set(key: @id, {silent: true})