{div} = React.DOM

MMC.Components.SearchResults = React.createClass
  render: ->
    heroComponents = []
    @props.collection.each (hero) ->
      heroComponents.push React.createElement(MMC.Components.SearchResult, hero.attributes)
    div {className: "hero-components"}, heroComponents