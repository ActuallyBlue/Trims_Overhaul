kill
execute if entity @s[tag=blue.tr.eye_thrown] run function blue:tr/effects/eye/emp/disfigure/mist
execute if entity @s[tag=blue.tr.eye_thrown] run return 0
execute on origin if score @s blue.tr.current_trim matches 3 run function blue:tr/effects/eye/emp/disfigure/mist
execute on origin if score @s blue.tr.current_trim matches 3 run return 0
execute on origin run playsound entity.ender_eye.death player @s ~ -128 ~ 0 1.25 1
execute on origin run playsound entity.ender_eye.death player @s ~ -128 ~ 0 1.25 1
playsound entity.ender_eye.death player @a[tag=blue.tr.eye,limit=1] ~ -128 ~ 0 1.1 0.75
playsound entity.ender_eye.death player @a[tag=blue.tr.eye,limit=1] ~ -128 ~ 0 1.1 0.75
playsound block.sign.waxed_interact_fail player @a ~ ~ ~ 2 0.5
playsound entity.ender_eye.death player @a ~ ~ ~ 2 1.25
particle glow_squid_ink ~ ~ ~ 0 0 0 0.1 4 force
particle scrape ~ ~ ~ 0 0 0 4 64 force