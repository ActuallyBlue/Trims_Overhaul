schedule function blue:tr/debug/provide_material_toggle 20t
execute as @a if items entity @s container.* #trim_materials[!provides_trim_material] run function blue:tr/delayed/provide_material
execute as @a run item modify entity @s player.cursor blue:tr/provide_material