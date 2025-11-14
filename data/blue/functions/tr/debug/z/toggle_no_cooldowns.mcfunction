function blue:tr/debug/reset_cooldowns
execute unless entity @s run schedule function blue:tr/debug/z/toggle_no_cooldowns 1t
execute unless entity @s run return 0
execute store success score #.temp blue.misc run schedule clear blue:tr/debug/z/toggle_no_cooldowns
execute if score #.temp blue.misc matches 1 run playsound block.lever.click player @s ~ ~ ~ 1 0.5
execute if score #.temp blue.misc matches 1 run tellraw @s [{"text":"blue:tr/debug/z/toggle_no_cooldowns","color":"gray"},{"text":": ","color":"dark_gray"},{"translate":"addServer.resourcePack.disabled","fallback":"%s","with":[{"translate":"manageServer.resourcePack.disabled","fallback":"Disabled"}],"color":"dark_red"}]
execute if score #.temp blue.misc matches 0 run tellraw @s [{"text":"blue:tr/debug/z/toggle_no_cooldowns","color":"gray"},{"text":": ","color":"dark_gray"},{"translate":"addServer.resourcePack.enabled","fallback":"%s","with":[{"translate":"manageServer.resourcePack.enabled","fallback":"Enabled"}],"color":"dark_green"}]
execute if score #.temp blue.misc matches 0 run schedule function blue:tr/debug/z/toggle_no_cooldowns 1t
execute if score #.temp blue.misc matches 0 run playsound block.lever.click player @s ~ ~ ~ 1 2