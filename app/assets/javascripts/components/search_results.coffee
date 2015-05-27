{div, h2, ul, li, img} = React.DOM

MMC.Components.SearchResults = React.createClass
  render: ->
    div {className: "hero"},
      h2 {className:"hero-name"},
        'Hero - [ID]'
        img {className: 'hero-avatar'}
      ul {className:"hero-details"},
        li {className: 'comics'}, '[comics.count]'