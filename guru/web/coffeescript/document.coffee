#
# Author:   Robert Jacobson
# Created:  9 February 2014
#
# Description: Defines interactivity code for a document.
#

collapseControlClick = (ev) ->
  $(ev.target).next().slideToggle(250)
  $(ev.target).next().toggleClass("fold-control-wrapper-closed")
  $(ev.target).toggleClass("fold-control-open")
  $(ev.target).toggleClass("fold-control-closed")
  #alert "Hello, world!" + ev.target

setupUI = ->
  $(".fold-control-open").on "click", (ev) -> collapseControlClick(ev)
  $(".fold-control-closed").on "click", (ev) -> collapseControlClick(ev)

$(document).ready(setupUI)