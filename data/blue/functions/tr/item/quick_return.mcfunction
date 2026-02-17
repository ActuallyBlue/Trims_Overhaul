data modify entity @s PickupDelay set value 0s
data modify entity @s Owner set from entity @s Thrower
execute on origin run tag @s add blue.tr.quick_return
tp @s @a[tag=blue.tr.quick_return,limit=1]
tag @a[tag=blue.tr.quick_return,limit=1] remove blue.tr.quick_return