execute store success score #.temp blue.misc if entity @s[advancements={blue:tr/tags={tutorial_barrage=true,tutorial_piercer=true,tutorial_vortex=true,tutorial_resource_pack=true,tutorial_pickup_trim=true,tutorial_new_player=true,tutorial_creative=true,tutorial_transfer=true}}]
execute if score #.temp blue.misc matches 1 run playsound item.book.page_turn player @s ~ ~ ~ 1 1.2
execute if score #.temp blue.misc matches 1 run tellraw @s ["\n",{"translate":"blue.tr.unskip_tutorials","fallback":" You have now un-skipped all the tutorials","color":"gray"},"\n"]
execute if score #.temp blue.misc matches 1 run advancement revoke @s only blue:tr/display/guides/objectives
execute if score #.temp blue.misc matches 1 run advancement revoke @s only blue:tr/display/guides/rtd
execute if score #.temp blue.misc matches 1 run advancement revoke @s only blue:tr/tags tutorial_piercer
execute if score #.temp blue.misc matches 1 run advancement revoke @s only blue:tr/tags tutorial_vortex
execute if score #.temp blue.misc matches 1 run advancement revoke @s only blue:tr/tags tutorial_resource_pack
execute if score #.temp blue.misc matches 1 run advancement revoke @s only blue:tr/tags tutorial_pickup_trim
execute if score #.temp blue.misc matches 1 run advancement revoke @s only blue:tr/tags tutorial_new_player
execute if score #.temp blue.misc matches 1 run advancement revoke @s only blue:tr/tags tutorial_creative
execute if score #.temp blue.misc matches 1 run advancement revoke @s only blue:tr/tags tutorial_transfer
execute if score #.temp blue.misc matches 0 run playsound item.book.page_turn player @s ~ ~ ~ 1 0.8
execute if score #.temp blue.misc matches 0 run tellraw @s ["\n",{"translate":"blue.tr.skip_tutorials","fallback":" Woah.. you've skipped all the tutorials!","color":"gray"}," ",{"text":"ℹ\n","color":"dark_gray","hoverEvent":{"action":"show_text","contents":{"translate":"blue.tr.tutorials.skip_hover","fallback":"If that's cause you've played before, then thanks for staying.\n(And if not, well, then thanks for using my pack in the first place)","color":"gray"}}}]
execute if score #.temp blue.misc matches 0 run advancement grant @s only blue:tr/display/guides/objectives
execute if score #.temp blue.misc matches 0 run advancement grant @s only blue:tr/display/guides/rtd
execute if score #.temp blue.misc matches 0 run advancement grant @s only blue:tr/tags tutorial_barrage
execute if score #.temp blue.misc matches 0 run advancement grant @s only blue:tr/tags tutorial_piercer
execute if score #.temp blue.misc matches 0 run advancement grant @s only blue:tr/tags tutorial_vortex
execute if score #.temp blue.misc matches 0 run advancement grant @s only blue:tr/tags tutorial_resource_pack
execute if score #.temp blue.misc matches 0 run advancement grant @s only blue:tr/tags tutorial_pickup_trim
execute if score #.temp blue.misc matches 0 run advancement grant @s only blue:tr/tags tutorial_new_player
execute if score #.temp blue.misc matches 0 run advancement grant @s only blue:tr/tags tutorial_creative
execute if score #.temp blue.misc matches 0 run advancement grant @s only blue:tr/tags tutorial_transfer