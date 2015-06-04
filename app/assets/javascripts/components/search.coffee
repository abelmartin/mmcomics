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
      urls: [{url: 'http://google.com'}]

    collection: new MMC.Collections.Characters([spidey], {name: 'Spider-Man'})

  componentDidMount: ->
    @state.collection.on 'sync', => @forceUpdate()

  onSearchSubmitted: (name) ->
    success = (collection, response, options) -> console.dir collection
    @state.name = name
    @state.collection.fetch success: success

  render: ->
    div {id: 'search-component'},
      React.createElement(MMC.Components.SearchForm, {id: 'search-form-component', searchText: @state.collection.name, callback: @onSearchSubmitted})
      React.createElement(MMC.Components.SearchResults, {id: 'search-results-component', collection: @state.collection})