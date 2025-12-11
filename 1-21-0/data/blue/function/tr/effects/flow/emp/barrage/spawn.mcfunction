playsound entity.breeze.shoot player @a ~ ~ ~ 0.5 1.1
execute positioned 0.0 0 0.0 in overworld run tp b163102f-0-0-0-200000000 ^ ^ ^2
data modify storage blue:trims merge.wind.Motion set from entity b163102f-0-0-0-200000000 Pos
execute positioned ^ ^ ^4 summon breeze_wind_charge run data modify entity @s {} merge from storage blue:trims merge.wind