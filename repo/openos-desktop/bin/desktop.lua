
slc = 0
shell.run("/cfg/theme.conf")
term.setBackgroundColor(backColor)
term.clear()
function titleBar()
  term.setCursorPos(1,1)
  term.setBackgroundColor(tBarC)
  term.setTextColor(tBartC)
  term.clearLine()
  term.setCursorPos(2,1)
  print("[Begin]")
end
function drawDesktop()
  term.setBackgroundColor(backColor)
  term.clear()
  bground = paintutils.loadImage("/cfg/wallpaper.bg")
  paintutils.drawImage(bground,1,1)
  titleBar()
end
 
function drawMenu1()
term.setTextColor(256)
term.setBackgroundColor(128)
term.setCursorPos(1,2)
print("          ")
term.setCursorPos(1,3)
print(" Restart  ")
term.setCursorPos(1,4)
print(" Sketch   ")
term.setCursorPos(1,5)
print(" DyNet    ")
term.setCursorPos(1,6)
print("          ")
end
 
drawDesktop()
while true do
  term.setCursorPos(1,48)
  sleep(0.1)
  print(textutils.formatTime(os.time(), false))
local event, button, X, Y = os.pullEventRaw()
  if slc == 0 then
    if event == "mouse_click" then
      if X >=2 and X <=8 and Y==1 and button ==1 then
      drawMenu1()
      slc = 1
        else
        drawDesktop()
      end
    end
   elseif slc == 1 then
     if X >=1 and X <=11 and button == 1 and Y== 3 then slc = 0
       os.shutdown()
       elseif X>=1 and X<=11 and Y==4 and button ==1 then slc = 0
       shell.run("/bin/sketch")
       elseif X>=1 and X<=11 and Y==4 and button ==1 then slc = 0
        shell.run("/bin/dynet/client/web")
       else
       slc = 0
       drawDesktop()
     end
  end
end