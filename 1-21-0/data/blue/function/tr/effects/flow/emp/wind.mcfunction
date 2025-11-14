execute if entity @s[type=breeze_wind_charge] if score #.no_breeze_pickup blue.misc matches 1 run return fail
scoreboard players set #.no_breeze_pickup blue.misc 1
execute facing entity @a[tag=blue.tr.mats.wind,limit=1] eyes run particle cloud ~ ~ ~ ^ ^ ^1000000 0.0000004 0
playsound entity.breeze.inhale player @a ~ ~ ~ 1 2
give @a[tag=blue.tr.mats.wind,limit=1] wind_charge
kill