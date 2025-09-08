playsound item.brush.brushing.sand.complete player @a ~ ~ ~ 3 0.5
playsound item.brush.brushing.sand.complete player @a ~ ~ ~ 3 0.5
playsound entity.lightning_bolt.impact player @a ~ ~ ~ 0.5 1.25
playsound item.elytra.flying player @a ~ ~ ~ 1.5 1.75
particle falling_dust sand ~ ~1 ~ 0.2 0.2 0.2 0.5 128
summon marker ~ ~ ~ {Tags:["blue.tr.dune_sandstorm"]}
scoreboard players set #.temp blue.misc -592
schedule function blue:tr/effects/dune/sandstorm/loop 1t
effect give @s invisibility 5 0
effect give @s speed 2 2 true