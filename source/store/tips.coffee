
cumulo = require 'cumulo-client'

transmitter = cumulo.transmitter

store = new cumulo.Store data: []

module.exports = store

transmitter.register 'tip/add', (data) ->
  store.data.unshift data

transmitter.register 'tip/remove', (id) ->
  store.data = store.data.filer (tip) ->
    tip.id isnt id
  store.dispatch()