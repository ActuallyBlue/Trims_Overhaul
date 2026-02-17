execute if score #.temp blue.misc matches -912 run return fail
execute on origin if score @s blue.tr.used_pearl matches -123 run scoreboard players set #.temp blue.misc -912
execute unless score #.temp blue.misc matches -912 run return fail
execute on origin anchored eyes run playsound entity.ender_eye.death player @a ^ ^ ^3 1 1.5
execute on origin anchored eyes run particle scrape ^ ^ ^3 0 0.05 0 2 8 force
execute on origin run effect give @s darkness 1 0 true
kill