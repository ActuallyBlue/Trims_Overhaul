playsound ui.button.click player @s 0 -128 0 0 2 0.75
tellraw @s {"text":"-- -- -- -- -- -- -- -- -- -- -- --","color":"gray"}
scoreboard players set #.temp blue.misc -123
function blue:tr/settings/objective_type
execute if score #.tr.objective_type blue.config matches 0 run function blue:tr/settings/armor_ownership
function blue:tr/settings/objective_announcements
function blue:tr/settings/template_clearing
function blue:tr/settings/require_unlock
function blue:tr/settings/allow_empowerment
function blue:tr/settings/egg_bonus
function blue:tr/settings/limit_owned_trims
function blue:tr/settings/random_task_defender
function blue:tr/settings/death_transfer_amount
function blue:tr/settings/manual_transferring
function blue:tr/settings/manual_untrimming
function blue:tr/settings/owner_finder
scoreboard players reset #.temp blue.misc
tellraw @s {"translate":"blue.tr.trim_settings","fallback":"\n [Trim Settings]","bold":true,"color":"gray","clickEvent":{"action":"run_command","value":"/trigger Trims_Menu.BLUE set 7"},"hoverEvent":{"action":"show_text","contents":[{"translate":"blue.tr.menu.trim_settings_hover","fallback":"Trim Ability Customization","color":"gray"},{"translate":"blue.tr.menu.is_interactable","fallback":"\nText in this menu is interactable","color":"dark_gray","italic":true}]}}
tellraw @s ""
tellraw @s[gamemode=creative] ["      ",{"text":"-- ℹ --\n","hoverEvent":{"action":"show_text","contents":{"translate":"blue.tr.creative.settings","fallback":"If you're an operator, you can click on any of the text above to cycle between its options, with more buttons in the first menu, assuming you stay in Creative mode.\n\nCreative players also bypass some settings (amongst plenty of other things), with the most notable ones being 'Manual Transfer' and 'Template Clearing'","color":"gray"}}}]
data remove storage blue:trims display
execute if score #.tr.wayfinder_toggle blue.config matches 0 run data modify storage blue:trims display append value ['{"translate":"Wayfinder","color":"#F1FFC8"}','{"text":", ","color":"dark_gray"}']
execute if score #.tr.silence_toggle blue.config matches 0 run data modify storage blue:trims display append value ['{"translate":"Silence","color":"#3842Cf"}','{"text":", ","color":"dark_gray"}']
execute if score #.tr.raiser_toggle blue.config matches 0 run data modify storage blue:trims display append value ['{"translate":"Raiser","color":"#95B623"}','{"text":", ","color":"dark_gray"}']
execute if score #.tr.shaper_toggle blue.config matches 0 run data modify storage blue:trims display append value ['{"translate":"Shaper","color":"#8F8F8F"}','{"text":", ","color":"dark_gray"}']
execute if score #.tr.sentry_toggle blue.config matches 0 run data modify storage blue:trims display append value ['{"translate":"Sentry","color":"#4B885B"}','{"text":", ","color":"dark_gray"}']
execute if score #.tr.spire_toggle blue.config matches 0 run data modify storage blue:trims display append value ['{"translate":"Spire","color":"#BE20C7"}','{"text":", ","color":"dark_gray"}']
execute if score #.tr.coast_toggle blue.config matches 0 run data modify storage blue:trims display append value ['{"translate":"Coast","color":"#C1C888"}','{"text":", ","color":"dark_gray"}']
execute if score #.tr.snout_toggle blue.config matches 0 run data modify storage blue:trims display append value ['{"translate":"Snout","color":"#F2B01A"}','{"text":", ","color":"dark_gray"}']
execute if score #.tr.ward_toggle blue.config matches 0 run data modify storage blue:trims display append value ['{"translate":"Ward","color":"#5C70AE"}','{"text":", ","color":"dark_gray"}']
execute if score #.tr.dune_toggle blue.config matches 0 run data modify storage blue:trims display append value ['{"translate":"Dune","color":"#E7C547"}','{"text":", ","color":"dark_gray"}']
execute if score #.tr.wild_toggle blue.config matches 0 run data modify storage blue:trims display append value ['{"translate":"Wild","color":"#00D529"}','{"text":", ","color":"dark_gray"}']
execute if score #.tr.tide_toggle blue.config matches 0 run data modify storage blue:trims display append value ['{"translate":"Tide","color":"#199ADD"}','{"text":", ","color":"dark_gray"}']
execute if score #.tr.host_toggle blue.config matches 0 run data modify storage blue:trims display append value ['{"translate":"Host","color":"#A34646"}','{"text":", ","color":"dark_gray"}']
execute if score #.tr.eye_toggle blue.config matches 0 run data modify storage blue:trims display append value ['{"translate":"Eye","color":"#1F8A46"}','{"text":", ","color":"dark_gray"}']
execute if score #.tr.rib_toggle blue.config matches 0 run data modify storage blue:trims display append value ['{"translate":"Rib","color":"#E6484B"}','{"text":", ","color":"dark_gray"}']
execute if score #.tr.vex_toggle blue.config matches 0 run data modify storage blue:trims display append value ['{"translate":"Vex","color":"#CFC6A5"}','{"text":", ","color":"dark_gray"}']
execute unless data storage blue:trims display run data modify storage blue:trims display append value ['{"translate":"gui.none","color":"dark_green"}','{"text":", ","color":"dark_gray"}']
data modify storage blue:trims display prepend value ['{"translate":"blue.tr.disabled_trims","fallback":"Disabled Trims","color":"gray"}','{"text":": ","color":"dark_gray"}']
data remove storage blue:trims display[-1][-1]
tellraw @s {"storage":"blue:trims","nbt":"display[][]","interpret":true,"separator":""}
tellraw @s {"text":"-- -- -- -- -- -- -- -- -- -- -- -- -- --","color":"gray"}