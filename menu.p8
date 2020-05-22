pico-8 cartridge // http://www.pico-8.com
version 27
__lua__
function _init()
 main_menu={
  "new game",
  "settings",
  "credits",
  "quit",
  selected=1
 }
 scene="mainmenu"
end

function _draw()
 cls()
 if (scene == "mainmenu") do
  draw_menu()
 end
 if (scene == "settings") do
  cls()
  print("no settings available", 10, 10, 10)
 end
end

function _update()
 if (btnp(2)) then
  main_menu.selected = main_menu.selected==1 and 4 or main_menu.selected - 1
 end
 if (btnp(3)) then
  main_menu.selected = main_menu.selected==4 and 1 or main_menu.selected + 1
 end

 if (btnp(4)) then
  if scene == "mainmenu" then
	  if (main_menu.selected==1) scene="newgame"
	  if (main_menu.selected==2) scene="settings"
	  if (main_menu.selected==3) scene="credits"
	 else
	  scene = "mainmenu"
	 end
 end
 
  
  
 
end


-->8
-- menu functions

function draw_menu()
 for i = 1,#main_menu do
  if main_menu.selected == i then
   rect(8,8+(8*i), 60, 16+(8*i),3)
  end
  print(main_menu[i], 
   10, 
   10+(8*i),
   main_menu.selected == i and 12 or 4)
 end
end

__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
