title @s actionbar {"translate":"blue.tr.gamble.punishers","fallback":"Punishers","color":"dark_red"}
summon piglin_brute ~4 ~ ~ {Tags:["blue.tr.gamble.punisher"],HandItems:[{id:golden_axe},{}],equipment:{mainhand:{id:golden_axe}}}
summon piglin_brute ~-4 ~ ~ {Tags:["blue.tr.gamble.punisher"],HandItems:[{id:golden_axe},{}],equipment:{mainhand:{id:golden_axe}}}
execute as @e[type=piglin_brute,tag=blue.tr.gamble.punisher,distance=..9,limit=2,sort=nearest] run damage @s 0 blue:tr/sacrifice by @a[tag=blue.tr.snout,limit=1]
execute at @e[type=piglin_brute,tag=blue.tr.gamble.punisher,distance=..9,limit=2,sort=nearest] run particle small_flame ~ ~1 ~ 0.3 0.4 0.3 0.02 47
playsound entity.piglin_brute.converted_to_zombified player @a ~ ~ ~ 1.5 0.75