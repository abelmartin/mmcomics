{div} = React.DOM

MMC.Components.SearchResults = React.createClass
  render: ->
    heroes = []
    @props.results.forEach (hero) ->
      heroes.push React.createElement(MMC.Components.SearchResult, hero.attributes)
    div {id: "heroes"}, heroes