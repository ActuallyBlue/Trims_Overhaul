tag @s[tag=blue.tr.trim.wayfinder] remove blue.tr.trim.wayfinder
tag @s[tag=blue.tr.trim.silence] remove blue.tr.trim.silence
tag @s[tag=blue.tr.trim.shaper] remove blue.tr.trim.shaper
tag @s[tag=blue.tr.trim.raiser] remove blue.tr.trim.raiser
tag @s[tag=blue.tr.trim.sentry] remove blue.tr.trim.sentry
tag @s[tag=blue.tr.trim.spire] remove blue.tr.trim.spire
tag @s[tag=blue.tr.trim.coast] remove blue.tr.trim.coast
tag @s[tag=blue.tr.trim.snout] remove blue.tr.trim.snout
tag @s[tag=blue.tr.trim.wild] remove blue.tr.trim.wild
tag @s[tag=blue.tr.trim.host] remove blue.tr.trim.host
tag @s[tag=blue.tr.trim.tide] remove blue.tr.trim.tide
tag @s[tag=blue.tr.trim.dune] remove blue.tr.trim.dune
tag @s[tag=blue.tr.trim.ward] remove blue.tr.trim.ward
tag @s[tag=blue.tr.trim.vex] remove blue.tr.trim.vex
tag @s[tag=blue.tr.trim.rib] remove blue.tr.trim.rib
tag @s[tag=blue.tr.trim.eye] remove blue.tr.trim.eye
execute if entity @s[advancements={blue:tr/tags={tutorial_unowned=true}}] run return 0
tellraw @s [{"text":"\n          - = ","color":"gray"},{"translate":"blue.tr.tutorial.unowned_title","fallback":"Unowned Trims","color":"white"},{"text":" = -\n\n"},{"translate":"blue.tr.tutorial.unowned","fallback":" You aren't the \"%s\" of the trim you've just equipped, so instead of abilities, you just have access to %s - if enabled. Click this message to open the owner list.","color":"gray","clickEvent":{"action":"run_command","value":"/trigger Trims_Menu.BLUE set 3"},"with":[{"translate":"blue.tr.owner","fallback":"Owner","color":"white","hoverEvent":{"action":"show_text","contents":{"translate":"blue.tr.adv.objectives.desc","fallback":"Be the first one to find the templates and complete its objective before anyone else to obtain usable templates alongside ownership over it."}}},{"translate":"blue.tr.owner_finder","fallback":"Owner Finder","hoverEvent":{"action":"show_text","contents":{"translate":"blue.tr.owner_finder_hover","fallback":"Wearing a trim without its ownership will have particles appear in the direction of its actual owner if they're online (ON, OFF)","color":"gray"}},"color":"white"}]},"  ",{"text":"(ℹ)\n","color":"white","clickEvent":{"action":"open_url","value":"https://discord.gg/TsC8AnaZeV"},"hoverEvent":{"action":"show_text","contents":{"translate":"blue.tr.tutorial.unowned_hover","fallback":"If you're a server operator and want to test trims, then you have 3 options;\n1. Give yourself ownership by running %s\n2. Enable the semi-experimental and possibly undesirable %s setting through %s\n3. Or the easiest but most dangerous. Only run the following command if this world can be ruined - %s\n\nWith all of this in mind, a trim can only be reliably used by 1 player at a time due to them all being optimized. No, it's not possible to change this (yet), that's one of the only things that aren't customizable in this datapack, even if you can tweak some files. Click here to join the Discord if you have any questions","color":"gray","with":[{"text":"/function blue:tr/completion/<trim>","color":"white"},{"translate":"blue.tr.armor_ownership","fallback":"Armor-controlled Ownership","color":"white"},{"text":"/function blue:tr/settings/armor_ownership","color":"white"},{"text":"/function blue:tr/debug/z/toggle_test_world","italic":true}]}}}]
playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1
advancement grant @s only blue:tr/tags tutorial_unowned