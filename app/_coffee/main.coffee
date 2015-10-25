#######################################################
#
# MAIN
#
#######################################################


window.api = impress()
api.init()


require('blast-text')
$(".chara").blast({delimiter: "character"})
$(".word").blast({delimiter: "word"})


$(".interact").click (evt)->
  $(evt.currentTarget).addClass("active")
  setTimeout ()->
    window.api.next()
    # $(evt.currentTarget).removeClass("active")
  , 400