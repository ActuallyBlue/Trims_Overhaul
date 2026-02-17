scoreboard players set #.temp blue.misc 0
function blue:tr/effects/ward/stonewall
scoreboard players reset #.ward.blocking blue.misc
scoreboard players reset #.ward.max_sound blue.misc
scoreboard players operation #.temp blue.misc = @s blue.tr.damage_blocked
execute unless score #.temp blue.misc matches 400.. run return fail
effect clear @s slowness
scoreboard players set #.ward.kinetic_cooldown blue.misc 1
schedule function blue:tr/effects/ward/kinetic/cooldown 180t
execute if entity @s[x_rotation=75..90] run return run function blue:tr/effects/ward/kinetic/field/create
function blue:tr/effects/ward/kinetic/barrier/create