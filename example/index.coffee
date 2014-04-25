ButtonHandler = require '../index.coffee'

bh = new ButtonHandler
document.body.appendChild bh.el

button = bh.el.querySelector 'button'
