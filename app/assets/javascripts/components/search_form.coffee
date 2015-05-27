{div, h2, input, button} = React.DOM

MMC.Components.SearchForm = React.createClass
  handleClick: (event) ->
    console.log 'CLICKED!'
  render: ->
    div {id: 'marvel-search-control', className: "panel panel-primary"},
      div {className:"panel-heading"},
        h2 {className:"panel-title"}, 'Find Heroes By Name'
      div {className:"panel-body"},
        input {id:'search-field', type:'text'}
        button {id:'search-button', onClick: @handleClick}, 'Search Marvel API'