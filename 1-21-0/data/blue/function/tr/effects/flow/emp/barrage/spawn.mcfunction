playsound entity.breeze.shoot player @a ~ ~ ~ 0.5 1.1
execute positioned 0.0 0 0.0 positioned ^ ^ ^2 summon marker run function blue:shared/shootfacing
data modify storage blue:trims merge.wind.Motion set from storage blue:shared Pos
execute positioned ^ ^ ^4 summon breeze_wind_charge run data modify entity @s {} merge from storage blue:trims merge.wind