execute if entity @s[advancements={blue:tr/tags={tutorial_pickup_trim=false}}] run function blue:tr/inv/templates/unlock/tutorial
advancement grant @s only blue:tr/tags unlocked_sentry
execute if score #.tr.sentry_completed blue.config matches 0 if function blue:tr/inv/templates/unlock/is_limit if entity @s[advancements={blue:tr/blacklist={sentry=false}}] run function blue:tr/completion/sentry
execute if score #.tr.require_unlock blue.config matches 0 run return fail
tellraw @s [{"translate":"blue.tr.unlock_obj","fallback":"You've unlocked the objective for","color":"gray"},{"text":": ","color":"dark_gray"},{"translate":"Sentry","color":"#4B885B"}]
playsound block.chest.locked player @s ~ ~ ~ 2 0.75
particle enchanted_hit ~ ~1 ~ 0.4 0.6 0.4 0 12