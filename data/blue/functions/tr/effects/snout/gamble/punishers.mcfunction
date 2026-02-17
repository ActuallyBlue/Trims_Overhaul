title @s actionbar {"translate":"blue.tr.gamble.punishers","fallback":"Punishers","color":"dark_red"}
summon piglin_brute ~4 ~ ~ {Tags:["blue.tr.gamble.punisher"],HandItems:[{id:golden_axe,Count:1b},{id:golden_axe,Count:1b}],DeathLootTable:""}
summon piglin_brute ~-4 ~ ~ {Tags:["blue.tr.gamble.punisher"],HandItems:[{id:golden_axe,Count:1b},{id:golden_axe,Count:1b}],DeathLootTable:""}
execute as @e[tag=blue.tr.gamble.punisher,distance=..9,limit=2,sort=nearest,type=piglin_brute] run damage @s 0 blue:tr/sacrifice by @a[tag=blue.tr.snout,limit=1]
execute at @e[tag=blue.tr.gamble.punisher,distance=..9,limit=2,sort=nearest,type=piglin_brute] run particle small_flame ~ ~1 ~ 0.3 0.4 0.3 0.02 47
effect give @e[tag=blue.tr.gamble.punisher,distance=..9,limit=2,sort=nearest,type=piglin_brute] strength 120 0 true
effect give @e[tag=blue.tr.gamble.punisher,distance=..9,limit=2,sort=nearest,type=piglin_brute] speed 120 0 true
playsound entity.piglin_brute.converted_to_zombified player @a ~ ~ ~ 1.5 0.75