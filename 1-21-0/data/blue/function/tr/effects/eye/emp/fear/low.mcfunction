particle glow ~ ~1 ~ 0 0.4 0 0.1 2 force
particle glow ~ ~1 ~ 0 0.4 0 0.1 2 force @a[tag=blue.tr.eye,scores={blue.particles=2..},limit=1]
execute if score #.temp blue.misc matches 1 run return run playsound entity.ghast.hurt player @s ~ ~ ~ 5 1
execute if score #.temp blue.misc matches 2..4 run return run playsound entity.player.attack.crit player @s ^ ^ ^2 1.5 1
execute if score #.temp blue.misc matches 5..8 run return run playsound entity.tnt.primed hostile @s ^1 ^ ^-4 1.5 1
execute if score #.temp blue.misc matches 9..12 run return run playsound entity.creeper.primed hostile @s ^-1 ^ ^-3 1.5 1
execute if score #.temp blue.misc matches 13..16 run return run playsound ambient.cave player @s ~ ~ ~ 1.5 1
execute if score #.temp blue.misc matches 17..20 run return run playsound ambient.underwater.loop.additions player @s ~ ~ ~ 2 1
execute if score #.temp blue.misc matches 21..24 run return run playsound entity.player.big_fall player @s ^2 ^3 ^-7 1.5 1
execute if score #.temp blue.misc matches 25..28 run return run function blue:tr/effects/eye/emp/fear/blocks
execute if score #.temp blue.misc matches 29..32 run return run function blue:tr/effects/eye/emp/fear/float_weak
execute if score #.temp blue.misc matches 33..35 run return run tp @s ~ ~ ~ ~30 ~
execute if score #.temp blue.misc matches 36..38 run return run tp @s ~ ~ ~ ~ ~20
execute if score #.temp blue.misc matches 39..41 run return run effect give @s darkness 3 0
execute if score #.temp blue.misc matches 42..44 run effect give @s blindness 2 0