MMC.Components.Search = React.createClass
  handleClick: (event)-> console.log 'CLICKED!'
  render: ->
    `<div id='marvel-search-control' class="panel panel-primary">
      <div class="panel-heading">
        <h3 class="panel-title">Search</h3>
      </div>
      <div class="panel-body">
        <input id='search-field' type='text'/>
        <button id='search-button' onClick={this.handleClick}>Search Marvel API</button>
      </div>
    </div>`