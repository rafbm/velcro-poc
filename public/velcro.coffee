pushStateHistory = []

updateContainers = (state, href) ->
  $.ajax
    url: href
    success: (data) ->
      html = document.createElement('html')
      html.innerHTML = data

      for selector in state.selectors.split(',')
        $(selector).html $(html).find(selector).html()

# Initialization
$(document).on 'click', 'a[data-vc-update], a[data-vc-push]', (e) ->
  link = this
  $link = $(this)

  if selectors = $link.data('vc-push')
    push = true
  else if selectors = $link.data('vc-update')
    push = false
  else
    return

  e.preventDefault()

  state = selectors: selectors
  updateContainers(state, link.href)

  if push
    # `replaceState` current page if it hasn’t been loaded with `pushState`
    if pushStateHistory[0] != location.href
      history.replaceState state, '', location.href
    pushStateHistory.unshift link.href

    # Push!
    history.pushState(state, '', link.href)

window.onpopstate = (e) ->
  return if !e.state
  updateContainers(e.state, location.href)
