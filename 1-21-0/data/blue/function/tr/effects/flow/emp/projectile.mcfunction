tag @s add blue.tr.checked
execute if function blue:tr/effects/flow/emp/own run return run execute if entity @s[type=wind_charge] if function blue:tr/effects/flow/emp/air run function blue:tr/effects/flow/emp/boost
execute unless entity @s[type=!wind_charge,type=!breeze_wind_charge] run return run function blue:tr/effects/flow/emp/wind
data modify storage blue:data trims.flow.m set from entity @s Motion
execute store result storage blue:data trims.flow.Motion[0] double -0.125 run data get storage blue:data trims.flow.m[0]
execute store result storage blue:data trims.flow.Motion[1] double -0.125 run data get storage blue:data trims.flow.m[1]
execute store result storage blue:data trims.flow.Motion[2] double -0.125 run data get storage blue:data trims.flow.m[2]
data modify entity @s Motion set from storage blue:data trims.flow.Motion
playsound entity.breeze.deflect player @a
particle cloud