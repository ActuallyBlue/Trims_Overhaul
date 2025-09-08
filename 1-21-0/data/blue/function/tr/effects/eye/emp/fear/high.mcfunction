particle glow ~ ~1 ~ 0 0.4 0 0.1 3 force
particle glow ~ ~1 ~ 0 0.4 0 0.1 3 force @a[tag=blue.tr.eye,scores={blue.particles=2..},limit=1]
execute if score #.temp blue.misc matches 45..46 run tp @s @s
execute if score #.temp blue.misc matches 47..48 run function blue:tr/effects/eye/emp/fear/damage
execute if score #.temp blue.misc matches 49..50 run effect give @s blindness 5 0
execute if score #.temp blue.misc matches 51..52 run function blue:tr/effects/eye/emp/fear/float_medium
execute if score #.temp blue.misc matches 53 run tp @s ~ ~ ~ facing entity @e[sort=random,limit=1,distance=..32]
execute if score #.temp blue.misc matches 54 run function blue:tr/effects/eye/emp/fear/float_strong
execute if score #.temp blue.misc matches 55 run playsound item.totem.use player @s ~ ~ ~ 0.9 1
execute if score #.temp blue.misc matches 56 run effect give @s slowness 2 100
execute if score #.temp blue.misc matches 57 run effect give @s weakness 2 100
execute if score #.temp blue.misc matches 58 run function blue:tr/effects/eye/emp/fear/curse
execute if score #.temp blue.misc matches 59 run function blue:tr/effects/eye/emp/fear/job
execute if score #.temp blue.misc matches 60 run tellraw @s {"translate":"death.attack.player","with":[{"selector":"@r"},{"selector":"@r[distance=1..]"}]}