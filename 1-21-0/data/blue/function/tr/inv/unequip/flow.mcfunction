scoreboard players set @s blue.tr.current_trim 0
function blue:tr/inv/unequip/attributes
tag @s[tag=blue.tr.mats.wind] remove blue.tr.mats.wind
scoreboard players reset #.barrage_time blue.misc
tag @s remove blue.tr.trim.flow