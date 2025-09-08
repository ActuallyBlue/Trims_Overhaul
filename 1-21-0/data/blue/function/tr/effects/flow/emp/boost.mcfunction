playsound entity.breeze.shoot player @a
data modify storage blue:data trims.merge.boost.Motion set from entity @s Motion
kill
execute on origin at @s anchored eyes positioned ^ ^ ^1 run function blue:tr/effects/flow/emp/positioned