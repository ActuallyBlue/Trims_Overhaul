data modify entity @s {} merge from storage blue:data trims.merge.item_data
tp @a[tag=blue.tr.killer,limit=1]
tag @s add blue.tr.checked
tag @s add blue.tr.extra