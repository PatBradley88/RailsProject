ready = undefined

ready = ->
  $('.sortable').sortable()
  return

$(document).ready ready
$(document).on 'turbolinks:load', ready
console.log 'Hello world from portfolios'