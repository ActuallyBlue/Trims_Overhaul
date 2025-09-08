advancement revoke @s only blue:tr/stack_ashen
execute if score #.rib.ashen_active blue.misc matches 1.. rotated ~ 0 positioned ^ ^ ^2 run return run function blue:tr/effects/rib/emp/ashen/spawn
execute unless score #.rib.strict_ashen blue.config matches 0 unless dimension the_nether run return fail
execute if score #.rib.ashen_cooldown blue.misc matches 1 run return run title @s actionbar {"text":"☠☠☠☠☠☠☠☠☠☠","color":"dark_gray","italic":true,"strikethrough":true}
scoreboard players add #.rib.ashen_stacks blue.misc 1
execute if score #.rib.ashen_stacks blue.misc matches 1 run title @s actionbar [{"text":"☠","color":"dark_red"},{"text":"☠☠☠☠☠☠☠☠☠","color":"dark_gray","italic":true}]
execute if score #.rib.ashen_stacks blue.misc matches 2 run title @s actionbar [{"text":"☠☠","color":"dark_red"},{"text":"☠☠☠☠☠☠☠☠","color":"dark_gray","italic":true}]
execute if score #.rib.ashen_stacks blue.misc matches 3 run title @s actionbar [{"text":"☠☠☠","color":"dark_red"},{"text":"☠☠☠☠☠☠☠","color":"dark_gray","italic":true}]
execute if score #.rib.ashen_stacks blue.misc matches 4 run title @s actionbar [{"text":"☠☠☠☠","color":"dark_red"},{"text":"☠☠☠☠☠☠","color":"dark_gray","italic":true}]
execute if score #.rib.ashen_stacks blue.misc matches 5 run title @s actionbar [{"text":"☠☠☠☠☠","color":"dark_red"},{"text":"☠☠☠☠☠","color":"dark_gray","italic":true}]
execute if score #.rib.ashen_stacks blue.misc matches 6 run title @s actionbar [{"text":"☠☠☠☠☠☠","color":"dark_red"},{"text":"☠☠☠☠","color":"dark_gray","italic":true}]
execute if score #.rib.ashen_stacks blue.misc matches 7 run title @s actionbar [{"text":"☠☠☠☠☠☠☠","color":"dark_red"},{"text":"☠☠☠","color":"dark_gray","italic":true}]
execute if score #.rib.ashen_stacks blue.misc matches 8 run title @s actionbar [{"text":"☠☠☠☠☠☠☠☠","color":"dark_red"},{"text":"☠☠","color":"dark_gray","italic":true}]
execute if score #.rib.ashen_stacks blue.misc matches 9 run title @s actionbar [{"text":"☠☠☠☠☠☠☠☠☠","color":"dark_red"},{"text":"☠","color":"dark_gray","italic":true}]
execute if score #.rib.ashen_stacks blue.misc matches 10.. run title @s actionbar {"text":"☠☠☠☠☠☠☠☠☠☠","color":"red","bold":true}
execute unless score #.rib.ashen_stacks blue.misc matches 10.. run return fail
scoreboard players set #.rib.ashen_cooldown blue.misc 1
scoreboard players set #.rib.ashen_active blue.misc 500
scoreboard players set #.rib.ashen_stacks blue.misc 0
playsound entity.wither.death player @a ~ ~ ~ 1.5 2
particle soul ~ ~1 ~ 0.2 0.4 0.2 0.4 128
particle ash ~ ~1 ~ 0.8 0.9 0.8 0 320
effect give @s resistance 15 9 true
effect give @s slowness 1 0 true
effect give @s glowing 2 0 true