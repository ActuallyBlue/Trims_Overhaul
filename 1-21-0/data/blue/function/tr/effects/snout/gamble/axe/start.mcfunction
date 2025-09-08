summon item_display ~ ~ ~ {Tags:["blue.tr.gamble.axe","smithed.entity","smithed.strict"],interpolation_duration:20,item:{id:golden_axe},transformation:{left_rotation:[-0.27f,0.65f,0.27f,-0.65f],right_rotation:[0f,0f,0f,1f],scale:[0.75f,0.75f,0.75f],translation:[0f,0.5f,0f]}}
execute facing entity @s eyes rotated ~ 0 run tp @n[type=item_display,tag=blue.tr.gamble.axe] ~ ~ ~ facing ^ ^ ^-1
title @s actionbar {"translate":"blue.tr.gamble.greataxe","fallback":"Greataxe","color":"dark_green"}
playsound block.anvil.destroy player @a ~ ~ ~ 2 0.5
function blue:tr/effects/snout/gamble/axe/loop