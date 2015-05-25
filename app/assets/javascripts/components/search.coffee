MMC.Components.Search = React.createClass
  handleClick: (event)-> console.log 'CLICKED!'
  render: ->
    React.createElement 'div', {id: 'marvel-search-control', className: "panel panel-primary"},
      React.createElement 'div', {className:"panel-heading"},
        React.createElement 'h3', {className:"panel-title"}, 'Find Heroes By Name'
      React.createElement 'div', {className:"panel-body"},
        React.createElement 'input', {id:'search-field', type:'text'}
        React.createElement 'button', {id:'search-button', onClick: @handleClick}, 'Search Marvel API'