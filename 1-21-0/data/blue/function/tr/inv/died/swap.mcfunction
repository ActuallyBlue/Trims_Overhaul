data modify storage blue:trims fake_inv append from entity @s Item
data modify entity @s {} merge from storage blue:trims merge.item_data
scoreboard players add #.drop_temp blue.misc 1
tp @a[tag=blue.tr.killer,limit=1]
execute unless items entity @s contents *[trim] run return fail
execute if items entity @s contents *[trim~{pattern:wayfinder}] as @e[distance=..3,tag=!blue.tr.checked,type=item] if items entity @s contents *[trim~{pattern:wayfinder}] run function blue:tr/inv/died/extra
execute if items entity @s contents *[trim~{pattern:silence}] as @e[distance=..3,tag=!blue.tr.checked,type=item] if items entity @s contents *[trim~{pattern:silence}] run function blue:tr/inv/died/extra
execute if items entity @s contents *[trim~{pattern:raiser}] as @e[distance=..3,tag=!blue.tr.checked,type=item] if items entity @s contents *[trim~{pattern:raiser}] run function blue:tr/inv/died/extra
execute if items entity @s contents *[trim~{pattern:shaper}] as @e[distance=..3,tag=!blue.tr.checked,type=item] if items entity @s contents *[trim~{pattern:shaper}] run function blue:tr/inv/died/extra
execute if items entity @s contents *[trim~{pattern:sentry}] as @e[distance=..3,tag=!blue.tr.checked,type=item] if items entity @s contents *[trim~{pattern:sentry}] run function blue:tr/inv/died/extra
execute if items entity @s contents *[trim~{pattern:spire}] as @e[distance=..3,tag=!blue.tr.checked,type=item] if items entity @s contents *[trim~{pattern:spire}] run function blue:tr/inv/died/extra
execute if items entity @s contents *[trim~{pattern:coast}] as @e[distance=..3,tag=!blue.tr.checked,type=item] if items entity @s contents *[trim~{pattern:coast}] run function blue:tr/inv/died/extra
execute if items entity @s contents *[trim~{pattern:snout}] as @e[distance=..3,tag=!blue.tr.checked,type=item] if items entity @s contents *[trim~{pattern:snout}] run function blue:tr/inv/died/extra
execute if items entity @s contents *[trim~{pattern:ward}] as @e[distance=..3,tag=!blue.tr.checked,type=item] if items entity @s contents *[trim~{pattern:ward}] run function blue:tr/inv/died/extra
execute if items entity @s contents *[trim~{pattern:bolt}] as @e[distance=..3,tag=!blue.tr.checked,type=item] if items entity @s contents *[trim~{pattern:bolt}] run function blue:tr/inv/died/extra
execute if items entity @s contents *[trim~{pattern:flow}] as @e[distance=..3,tag=!blue.tr.checked,type=item] if items entity @s contents *[trim~{pattern:flow}] run function blue:tr/inv/died/extra
execute if items entity @s contents *[trim~{pattern:dune}] as @e[distance=..3,tag=!blue.tr.checked,type=item] if items entity @s contents *[trim~{pattern:dune}] run function blue:tr/inv/died/extra
execute if items entity @s contents *[trim~{pattern:wild}] as @e[distance=..3,tag=!blue.tr.checked,type=item] if items entity @s contents *[trim~{pattern:wild}] run function blue:tr/inv/died/extra
execute if items entity @s contents *[trim~{pattern:tide}] as @e[distance=..3,tag=!blue.tr.checked,type=item] if items entity @s contents *[trim~{pattern:tide}] run function blue:tr/inv/died/extra
execute if items entity @s contents *[trim~{pattern:host}] as @e[distance=..3,tag=!blue.tr.checked,type=item] if items entity @s contents *[trim~{pattern:host}] run function blue:tr/inv/died/extra
execute if items entity @s contents *[trim~{pattern:eye}] as @e[distance=..3,tag=!blue.tr.checked,type=item] if items entity @s contents *[trim~{pattern:eye}] run function blue:tr/inv/died/extra
execute if items entity @s contents *[trim~{pattern:rib}] as @e[distance=..3,tag=!blue.tr.checked,type=item] if items entity @s contents *[trim~{pattern:rib}] run function blue:tr/inv/died/extra
execute if items entity @s contents *[trim~{pattern:vex}] as @e[distance=..3,tag=!blue.tr.checked,type=item] if items entity @s contents *[trim~{pattern:vex}] run function blue:tr/inv/died/extra