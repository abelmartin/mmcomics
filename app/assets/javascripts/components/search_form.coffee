{form, div, h2, input} = React.DOM

MMC.Components.SearchForm = React.createClass
  handleSubmit: (event) ->
    event.preventDefault()
    console.log 'SUBMITTED!'
  render: ->
    div {id: 'marvel-search-control', className: "panel panel-primary"},
      div {className:"panel-heading"},
        h2 {className:"panel-title"}, 'Find Heroes By Name'
      form {id: 'search-form', className:"panel-body", onSubmit: @handleSubmit},
        input {id:'search-field', type:'text', defaultValue: @props.searchText}
        input {id:'search-button', type: 'submit', value: 'Search Marvel API'}