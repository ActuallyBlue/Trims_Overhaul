execute store result score #.temp blue.misc run random value 0..4
execute if score #.temp blue.misc matches 3.. run tellraw @s {"translate":"death.attack.player","with":[{"selector":"@r"},{"selector":"@e[sort=random,type=!#blue:shared/peaceful,limit=1]"}]}
execute if score #.temp blue.misc matches 2 run tellraw @s {"translate":"death.attack.explosion.player","with":[{"selector":"@r"},{"selector":"@r"}]}
execute if score #.temp blue.misc matches 1 run tellraw @s {"translate":"death.attack.explosion","with":[{"selector":"@r"}]}
execute if score #.temp blue.misc matches 0 run tellraw @s {"translate":"death.attack.drown","with":[{"selector":"@r"}]}