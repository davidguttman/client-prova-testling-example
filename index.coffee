bean = require 'bean'
template = require './template.jade'

View = module.exports = (@opts={}) ->
  @el = document.createElement 'div'
  @setEvents()

  @render()
  return this

View::setEvents = ->
  events = [
    ['click', 'button', @clickHandler]
  ]

  for event in events
    [type, selector, handler] = event
    bean.on @el, type, selector, handler.bind this

View::render = ->
  @el.innerHTML = template()
  return this

View::clickHandler = (evt) ->
  button = @el.querySelector 'button'
  button.innerHTML = 'click text'
