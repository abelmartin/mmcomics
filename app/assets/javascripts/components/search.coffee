{div} = React.DOM

MMC.Components.Search = React.createClass

  getInitialState: ->
    collection: new MMC.Collections.Characters([], {name: 'Spider-Man'})

  onSearchSubmitted: (name) ->
    success = (collection, response, options) =>
      console.dir collection
      @forceUpdate()
    @state.collection.name = name
    @state.collection.fetch success: success

  render: ->
    div {id: 'search-component'},
      React.createElement(MMC.Components.SearchForm, {id: 'search-form-component', searchText: @state.collection.name, callback: @onSearchSubmitted})
      React.createElement(MMC.Components.SearchResults, {id: 'search-results-component', collection: @state.collection})