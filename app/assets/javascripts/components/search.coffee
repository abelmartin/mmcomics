{div} = React.DOM

MMC.Components.Search = React.createClass
  getInitialState: ->
    spidey =
      id: 1009610
      name: 'Spider-Man'
      thumbnail:
        path: 'http://i.annihil.us/u/prod/marvel/i/mg/3/50/526548a343e4b'
        extension: 'jpg'
      comics:
        available: 2099
      series:
        available: 2099
      stories:
        available: 2099
    new MMC.Collections.Characters([spidey], {name: 'Spider-Man'})

  render: ->
    div {},
      React.createElement(MMC.Components.SearchForm, {searchText: @state.name})
      React.createElement(MMC.Components.SearchResults, {results: @state.models})