execute as @a[tag=blue.tr.vex.vulnerable] at @s if entity @a[scores={blue.tr.current_trim=13},distance=..9,limit=1] run tag @s add blue.tr.vex.temp
tag @a[tag=blue.tr.vex.vulnerable] remove blue.tr.vex.vulnerable
effect clear @a[tag=blue.tr.vex.temp] absorption
execute at @a[tag=blue.tr.vex.temp] run particle landing_honey ~ ~1 ~ 0.3 0.6 0.3 0.1 32
execute if score #.vex.isolated blue.misc matches 1 run effect give @a[tag=blue.tr.vex.temp,advancements={blue:tr/vulnerability={enchanted_golden_apple=true}}] absorption 120 1 true
execute if score #.vex.isolated blue.misc matches 0 run effect give @a[tag=blue.tr.vex.temp,advancements={blue:tr/vulnerability={enchanted_golden_apple=true}}] absorption 120 2 true
execute if score #.vex.isolated blue.misc matches 0 run effect give @a[tag=blue.tr.vex.temp,advancements={blue:tr/vulnerability={totem=true}}] absorption 5 0 true
advancement revoke @a[tag=blue.tr.vex.temp] only blue:tr/vulnerability
tag @a[tag=blue.tr.vex.temp] remove blue.tr.vex.temp