{div, h2, ul, li, img} = React.DOM

MMC.Components.SearchResult = React.createClass
  render: ->
    avatarURL = "#{@props.thumbnail.path}.#{@props.thumbnail.extension}"

    div {className: "hero"},
      div {className: 'hero-heading'},
        img {className: 'hero-avatar', src: avatarURL}
        h2 {className: 'hero-name'}, @props.name
      ul {className:"hero-details"},
        li {className: 'comics'}, "comics count: #{@props.comics.available}"
        li {className: 'series'}, "series count: #{@props.series.available}"
        li {className: 'stories'}, "stories count: #{@props.stories.available}"