execute unless entity @s as @a[scores={color=..-1}] unless entity @s[tag=!blue.tr.trim.silence,team=!blue.tr.silence,tag=!blue.tr.trim.wild,tag=!blue.tr.trim.rib,team=!blue.tr.rib] run function blue:tr/delayed/color_compat
execute unless entity @s run schedule function blue:tr/delayed/color_compat 3t
execute unless entity @s run return 0
execute if score @s[tag=blue.tr.trim.silence] color matches -1 run return run team modify blue.tr.silence color reset
execute if score @s[tag=blue.tr.trim.silence] color matches -2 run return run team modify blue.tr.silence color black
execute if score @s[tag=blue.tr.trim.silence] color matches -3 run return run team modify blue.tr.silence color dark_blue
execute if score @s[tag=blue.tr.trim.silence] color matches -4 run return run team modify blue.tr.silence color dark_green
execute if score @s[tag=blue.tr.trim.silence] color matches -5 run return run team modify blue.tr.silence color dark_aqua
execute if score @s[tag=blue.tr.trim.silence] color matches -6 run return run team modify blue.tr.silence color dark_red
execute if score @s[tag=blue.tr.trim.silence] color matches -7 run return run team modify blue.tr.silence color dark_purple
execute if score @s[tag=blue.tr.trim.silence] color matches -8 run return run team modify blue.tr.silence color gold
execute if score @s[tag=blue.tr.trim.silence] color matches -9 run return run team modify blue.tr.silence color gray
execute if score @s[tag=blue.tr.trim.silence] color matches -10 run return run team modify blue.tr.silence color dark_gray
execute if score @s[tag=blue.tr.trim.silence] color matches -11 run return run team modify blue.tr.silence color blue
execute if score @s[tag=blue.tr.trim.silence] color matches -12 run return run team modify blue.tr.silence color green
execute if score @s[tag=blue.tr.trim.silence] color matches -13 run return run team modify blue.tr.silence color aqua
execute if score @s[tag=blue.tr.trim.silence] color matches -14 run return run team modify blue.tr.silence color red
execute if score @s[tag=blue.tr.trim.silence] color matches -15 run return run team modify blue.tr.silence color light_purple
execute if score @s[tag=blue.tr.trim.silence] color matches -16 run return run team modify blue.tr.silence color yellow
execute if score @s[tag=blue.tr.trim.silence] color matches -17 run return run team modify blue.tr.silence color white
execute if score @s[tag=blue.tr.trim.rib] color matches -1 run return run team modify blue.tr.rib color reset
execute if score @s[tag=blue.tr.trim.rib] color matches -2 run return run team modify blue.tr.rib color black
execute if score @s[tag=blue.tr.trim.rib] color matches -3 run return run team modify blue.tr.rib color dark_blue
execute if score @s[tag=blue.tr.trim.rib] color matches -4 run return run team modify blue.tr.rib color dark_green
execute if score @s[tag=blue.tr.trim.rib] color matches -5 run return run team modify blue.tr.rib color dark_aqua
execute if score @s[tag=blue.tr.trim.rib] color matches -6 run return run team modify blue.tr.rib color dark_red
execute if score @s[tag=blue.tr.trim.rib] color matches -7 run return run team modify blue.tr.rib color dark_purple
execute if score @s[tag=blue.tr.trim.rib] color matches -8 run return run team modify blue.tr.rib color gold
execute if score @s[tag=blue.tr.trim.rib] color matches -9 run return run team modify blue.tr.rib color gray
execute if score @s[tag=blue.tr.trim.rib] color matches -10 run return run team modify blue.tr.rib color dark_gray
execute if score @s[tag=blue.tr.trim.rib] color matches -11 run return run team modify blue.tr.rib color blue
execute if score @s[tag=blue.tr.trim.rib] color matches -12 run return run team modify blue.tr.rib color green
execute if score @s[tag=blue.tr.trim.rib] color matches -13 run return run team modify blue.tr.rib color aqua
execute if score @s[tag=blue.tr.trim.rib] color matches -14 run return run team modify blue.tr.rib color red
execute if score @s[tag=blue.tr.trim.rib] color matches -15 run return run team modify blue.tr.rib color light_purple
execute if score @s[tag=blue.tr.trim.rib] color matches -16 run return run team modify blue.tr.rib color yellow
execute if score @s[tag=blue.tr.trim.rib] color matches -17 run return run team modify blue.tr.rib color white