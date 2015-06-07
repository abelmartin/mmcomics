{a, div, h2, ul, li, img} = React.DOM

MMC.Components.SearchResult = React.createClass
  render: ->
    # debugger
    avatarURL = "#{@props.thumbnail?.path}.#{@props.thumbnail?.extension}"

    div {className: "hero"},
      div {className: 'hero-heading'},
        img {className: 'hero-avatar', src: avatarURL}
        h2 {className: 'hero-name'}, @props.name
      ul {className:"hero-details"},
        li {className: 'comics'}, "comics count: #{@props.comics.available}"
        li {className: 'series'}, "series count: #{@props.series.available}"
        li {className: 'stories'}, "stories count: #{@props.stories.available}"
        li {className: 'marvel-dot-com'},
          'Marvel.com:  ',
          a {href: @props.urls[0]?.url, target: '_blank'}, @props.urls[0]?.url
        li {className: 'wiki'},
          'Wiki:  ',
          a {href: @props.urls[1]?.url, target: '_blank'}, @props.urls[1]?.url
        li {className: 'comic-link'},
          'Comic Link:  ',
          a {href: @props.urls[2]?.url, target: '_blank'}, @props.urls[2]?.url