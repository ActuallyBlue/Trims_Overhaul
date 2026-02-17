effect clear @s slowness
execute store success score #.temp blue.misc if predicate {condition:"any_of",terms:[{condition:"entity_properties",entity:"this",predicate:{slots:{"container.*":{items:"#blue:tr/spears"}}}},{condition:"entity_properties",entity:"this",predicate:{slots:{weapon.offhand:{items:"#blue:tr/spears"}}}}]}
execute if score #.temp blue.misc matches 1 run effect give @s[scores={blue.food=..3,blue.tr.structures=32..}] saturation 1 0 true
execute if score #.temp blue.misc matches 0 run effect give @s[scores={blue.food=..6,blue.tr.structures=32..}] saturation 1 0 true
execute unless predicate blue:shared/is_sprinting run return run scoreboard players reset #.wayfinder.sprint blue.misc
execute if score @s blue.tr.combat matches -300.. if predicate blue:tr/hold_spear-map run function blue:tr/effects/wayfinder/bonus
effect give @s[scores={blue.tr.structures=..31}] speed 1 0 true
effect give @s[scores={blue.tr.structures=..31}] jump_boost 1 0 true
execute unless score @s blue.tr.structures matches 32.. run return fail
effect give @s jump_boost 1 1 true
effect give @s speed 1 1 true