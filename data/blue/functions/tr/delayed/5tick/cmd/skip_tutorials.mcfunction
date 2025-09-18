playsound item.book.page_turn player @s ~ ~ ~ 1 1.5
execute if entity @s[advancements={blue:tr/tags={tutorial_barrage=true,tutorial_piercer=true,tutorial_vortex=true,tutorial_complete_objective=true,tutorial_resource_pack=true,tutorial_pickup_trim=true,tutorial_new_player=true,tutorial_creative=true,tutorial_transfer=true,tutorial_rtd=true}}] run title @s actionbar {"translate":"blue.tr.no_tutorial_skip","fallback":"It would seem you've already completed every tutorial","color":"gray","italic":true}
execute if entity @s[advancements={blue:tr/tags={tutorial_barrage=true,tutorial_piercer=true,tutorial_vortex=true,tutorial_complete_objective=true,tutorial_resource_pack=true,tutorial_pickup_trim=true,tutorial_new_player=true,tutorial_creative=true,tutorial_transfer=true,tutorial_rtd=true}}] run return 0
tellraw @s[distance=..0.1] ["\n",{"translate":"blue.tr.tutorials","fallback":" Woah.. you've skipped all the tutorials!","color":"gray"}," ",{"text":"ℹ\n","color":"dark_gray","hoverEvent":{"action":"show_text","contents":{"translate":"blue.tr.tutorials.skip_hover","fallback":"If that's cause you've played before, then thanks for staying.\n(And if not, well, then thanks for using my pack in the first place)","color":"gray"}}}]
advancement grant @s only blue:tr/tags tutorial_barrage
advancement grant @s only blue:tr/tags tutorial_piercer
advancement grant @s only blue:tr/tags tutorial_vortex
advancement grant @s only blue:tr/tags tutorial_complete_objective
advancement grant @s only blue:tr/tags tutorial_resource_pack
advancement grant @s only blue:tr/tags tutorial_pickup_trim
advancement grant @s only blue:tr/tags tutorial_new_player
advancement grant @s only blue:tr/tags tutorial_creative
advancement grant @s only blue:tr/tags tutorial_transfer
advancement grant @s only blue:tr/tags tutorial_rtd
tag @s add blue.tr.ignore_first