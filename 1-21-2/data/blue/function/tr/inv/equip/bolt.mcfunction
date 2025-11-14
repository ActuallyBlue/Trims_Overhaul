tag @s add blue.tr.trim.bolt
execute unless entity @s[tag=blue.tr.bolt] run return fail
attribute @s block_interaction_range modifier add blue:tr.trim 0.7 add_multiplied_total
attribute @s step_height modifier add blue:tr.trim 0.6 add_multiplied_total
attribute @s mining_efficiency modifier add blue:tr.trim 0.4 add_multiplied_total
scoreboard players set @s blue.tr.current_trim 17