{div} = React.DOM

MMC.Components.Search = React.createClass
  render: ->
    div {},
      React.createElement(MMC.Components.SearchForm, {})
      React.createElement(MMC.Components.SearchResults, {})