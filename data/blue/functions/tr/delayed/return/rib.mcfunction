scoreboard players operation #.template_loot blue.misc = #.rib_stored blue.misc
loot spawn ~ ~0.5 ~ loot blue:tr/rib
scoreboard players set #.template_loot blue.misc 1
tellraw @s [{"translate":"Rib","color":"#E6484B"},{"translate":"blue.tr.returned","fallback":" template(s) have been returned to you","color":"gray"}]
advancement grant @s[advancements={blue:tr/display/guides/protection=false}] only blue:tr/display/guides/protection
playsound entity.enderman.teleport player @s ~ ~-2 ~ 0.8 0.75
scoreboard players reset #.rib_stored blue.misc
particle portal ~ ~0.5 ~ 0.05 0.5 0.05 0.3 16