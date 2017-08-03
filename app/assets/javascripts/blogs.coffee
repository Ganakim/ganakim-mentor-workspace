ready = undefined
set_rate = undefined

set_rate = =>
  $('#background').attr playbackRate: '.1'
  return

ready = =>
  set_rate()
  return

$(document).ready ready