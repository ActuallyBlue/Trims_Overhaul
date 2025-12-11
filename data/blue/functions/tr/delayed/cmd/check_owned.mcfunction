playsound ui.button.click player @s 0 -128 0 0 2 0.75
scoreboard players reset #.check_owned Trims_Menu.BLUE
execute if entity @s[tag=blue.tr.eye,tag=blue.tr.rib,tag=blue.tr.vex,tag=blue.tr.tide,tag=blue.tr.ward,tag=blue.tr.dune,tag=blue.tr.wild,tag=blue.tr.host,tag=blue.tr.snout,tag=blue.tr.coast,tag=blue.tr.spire,tag=blue.tr.sentry,tag=blue.tr.shaper,tag=blue.tr.raiser,tag=blue.tr.silence,tag=blue.tr.wayfinder] run scoreboard players set #.check_owned Trims_Menu.BLUE 2
execute if entity @s[advancements={blue:tr/tags={has_trim=false}}] run scoreboard players set #.check_owned Trims_Menu.BLUE 1
execute if score #.check_owned Trims_Menu.BLUE matches 2 run tellraw @s [{"translate":"blue.tr.you_own","fallback":"Owned Trims","color":"gray"},{"text":": ","color":"dark_gray"},{"translate":"gui.all","color":"dark_green","extra":[".."]}]
execute if score #.check_owned Trims_Menu.BLUE matches 1 run tellraw @s [{"translate":"blue.tr.you_own","fallback":"Owned Trims","color":"gray"},{"text":": ","color":"dark_gray"},{"translate":"gui.none","color":"dark_red"}]
execute if score #.check_owned Trims_Menu.BLUE matches 1.. run return 0
data modify storage blue:trims display set value [['{"translate":"blue.tr.you_own","fallback":"Owned Trims","color":"gray"}','{"text":": ","color":"dark_gray"}']]
execute if entity @s[tag=blue.tr.wayfinder] run data modify storage blue:trims display append value ['{"translate":"Wayfinder","color":"#F1FFC8"}','{"text":", ","color":"dark_gray"}']
execute if entity @s[tag=blue.tr.silence] run data modify storage blue:trims display append value ['{"translate":"Silence","color":"#3842Cf"}','{"text":", ","color":"dark_gray"}']
execute if entity @s[tag=blue.tr.raiser] run data modify storage blue:trims display append value ['{"translate":"Raiser","color":"#95B623"}','{"text":", ","color":"dark_gray"}']
execute if entity @s[tag=blue.tr.shaper] run data modify storage blue:trims display append value ['{"translate":"Shaper","color":"#8F8F8F"}','{"text":", ","color":"dark_gray"}']
execute if entity @s[tag=blue.tr.sentry] run data modify storage blue:trims display append value ['{"translate":"Sentry","color":"#4B885B"}','{"text":", ","color":"dark_gray"}']
execute if entity @s[tag=blue.tr.spire] run data modify storage blue:trims display append value ['{"translate":"Spire","color":"#BE20C7"}','{"text":", ","color":"dark_gray"}']
execute if entity @s[tag=blue.tr.coast] run data modify storage blue:trims display append value ['{"translate":"Coast","color":"#C1C888"}','{"text":", ","color":"dark_gray"}']
execute if entity @s[tag=blue.tr.snout] run data modify storage blue:trims display append value ['{"translate":"Snout","color":"#F2B01A"}','{"text":", ","color":"dark_gray"}']
execute if entity @s[tag=blue.tr.ward] run data modify storage blue:trims display append value ['{"translate":"Ward","color":"#5C70AE"}','{"text":", ","color":"dark_gray"}']
execute if entity @s[tag=blue.tr.dune] run data modify storage blue:trims display append value ['{"translate":"Dune","color":"#E7C547"}','{"text":", ","color":"dark_gray"}']
execute if entity @s[tag=blue.tr.wild] run data modify storage blue:trims display append value ['{"translate":"Wild","color":"#00D529"}','{"text":", ","color":"dark_gray"}']
execute if entity @s[tag=blue.tr.tide] run data modify storage blue:trims display append value ['{"translate":"Tide","color":"#199ADD"}','{"text":", ","color":"dark_gray"}']
execute if entity @s[tag=blue.tr.host] run data modify storage blue:trims display append value ['{"translate":"Host","color":"#A34646"}','{"text":", ","color":"dark_gray"}']
execute if entity @s[tag=blue.tr.eye] run data modify storage blue:trims display append value ['{"translate":"Eye","color":"#1F8A46"}','{"text":", ","color":"dark_gray"}']
execute if entity @s[tag=blue.tr.rib] run data modify storage blue:trims display append value ['{"translate":"Rib","color":"#E6484B"}','{"text":", ","color":"dark_gray"}']
execute if entity @s[tag=blue.tr.vex] run data modify storage blue:trims display append value ['{"translate":"Vex","color":"#CFC6A5"}','{"text":", ","color":"dark_gray"}']
data remove storage blue:trims display[-1][-1]
execute store result score #.temp blue.misc run data get storage blue:trims display
execute if score #.temp blue.misc matches 4.. run data modify storage blue:trims display[-2][-1].text set value " and "
tellraw @s {"storage":"blue:trims","nbt":"display[][]","interpret":true,"separator":""}