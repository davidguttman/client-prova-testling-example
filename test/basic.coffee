test = require 'prova'

ButtonHandler = require '../index.coffee'

test 'basic test', (t) ->
  bh = new ButtonHandler
  document.body.appendChild bh.el

  button = bh.el.querySelector 'button'
  t.ok button
  t.equal button.innerHTML, 'Starting text'

  button.click()
  t.equal button.innerHTML, 'click text'



  t.end()
