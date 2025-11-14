function blue:tr/debug/reset_cooldowns
execute unless entity @s run return run schedule function blue:tr/debug/z/toggle_no_cooldowns 1t
execute store success score #.temp blue.misc run schedule clear blue:tr/debug/z/toggle_no_cooldowns
execute if score #.temp blue.misc matches 1 run tellraw @s [{"text":"blue:tr/debug/z/toggle_no_cooldowns","color":"gray"},{"text":": ","color":"dark_gray"},{"translate":"addServer.resourcePack.disabled","fallback":"%s","with":[{"translate":"manageServer.resourcePack.disabled","fallback":"Disabled"}],"color":"dark_red"}]
execute if score #.temp blue.misc matches 1 run return run playsound block.lever.click player @s ~ ~ ~ 1 0.5
tellraw @s [{"text":"blue:tr/debug/z/toggle_no_cooldowns","color":"gray"},{"text":": ","color":"dark_gray"},{"translate":"addServer.resourcePack.enabled","fallback":"%s","with":[{"translate":"manageServer.resourcePack.enabled","fallback":"Enabled"}],"color":"dark_green"}]
schedule function blue:tr/debug/z/toggle_no_cooldowns 1t
playsound block.lever.click player @s ~ ~ ~ 1 2