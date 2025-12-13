execute as @a[tag=blue.tr.vex_vulnerable] at @s if entity @a[scores={blue.tr.current_trim=13},distance=..10,limit=1] run tag @s add blue.tr.vex_temp
tag @a[tag=blue.tr.vex_vulnerable] remove blue.tr.vex_vulnerable
effect clear @a[tag=blue.tr.vex_temp] absorption
execute at @a[tag=blue.tr.vex_temp] run particle landing_honey ~ ~1 ~ 0.3 0.6 0.3 0.1 32
execute if score #.vex.isolated blue.misc matches 1 run return 0
effect give @a[tag=blue.tr.vex_temp,advancements={blue:tr/vulnerability={enchanted_golden_apple=true}}] absorption 120 1 true
effect give @a[tag=blue.tr.vex_temp,advancements={blue:tr/vulnerability={totem=true}}] absorption 5 0 true
tag @a[tag=blue.tr.vex_temp] remove blue.tr.vex_temp