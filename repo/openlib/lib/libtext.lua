function cPrint(sText)
  local w, h = term.getSize()
  local x, y = term.getCursorPos()
  local substr = #sText / 2
  x = w / 2 - substr
  term.setCursorPos(x, y)
  print(sText)
end