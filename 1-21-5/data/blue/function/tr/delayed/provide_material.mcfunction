advancement revoke @s only blue:tr/provide_material req
execute store success score #.temp blue.misc run clear @s #trim_materials[!provides_trim_material] 0
execute unless score #.temp blue.misc matches 0 if items entity @s container.* #trim_materials[!provides_trim_material] run scoreboard players set #.temp blue.misc 1
execute if entity @s[distance=..1] if score #.temp blue.misc matches 0 run return fail
execute if items entity @s weapon.offhand #trim_materials[!provides_trim_material] run item modify entity @s weapon.offhand blue:tr/provide_material
execute if items entity @s inventory.0 #trim_materials[!provides_trim_material] run item modify entity @s inventory.0 blue:tr/provide_material
execute if items entity @s inventory.1 #trim_materials[!provides_trim_material] run item modify entity @s inventory.1 blue:tr/provide_material
execute if items entity @s inventory.2 #trim_materials[!provides_trim_material] run item modify entity @s inventory.2 blue:tr/provide_material
execute if items entity @s inventory.3 #trim_materials[!provides_trim_material] run item modify entity @s inventory.3 blue:tr/provide_material
execute if items entity @s inventory.4 #trim_materials[!provides_trim_material] run item modify entity @s inventory.4 blue:tr/provide_material
execute if items entity @s inventory.5 #trim_materials[!provides_trim_material] run item modify entity @s inventory.5 blue:tr/provide_material
execute if items entity @s inventory.6 #trim_materials[!provides_trim_material] run item modify entity @s inventory.6 blue:tr/provide_material
execute if items entity @s inventory.7 #trim_materials[!provides_trim_material] run item modify entity @s inventory.7 blue:tr/provide_material
execute if items entity @s inventory.8 #trim_materials[!provides_trim_material] run item modify entity @s inventory.8 blue:tr/provide_material
execute if items entity @s inventory.9 #trim_materials[!provides_trim_material] run item modify entity @s inventory.9 blue:tr/provide_material
execute if items entity @s inventory.10 #trim_materials[!provides_trim_material] run item modify entity @s inventory.10 blue:tr/provide_material
execute if items entity @s inventory.11 #trim_materials[!provides_trim_material] run item modify entity @s inventory.11 blue:tr/provide_material
execute if items entity @s inventory.12 #trim_materials[!provides_trim_material] run item modify entity @s inventory.12 blue:tr/provide_material
execute if items entity @s inventory.13 #trim_materials[!provides_trim_material] run item modify entity @s inventory.13 blue:tr/provide_material
execute if items entity @s inventory.14 #trim_materials[!provides_trim_material] run item modify entity @s inventory.14 blue:tr/provide_material
execute if items entity @s inventory.15 #trim_materials[!provides_trim_material] run item modify entity @s inventory.15 blue:tr/provide_material
execute if items entity @s inventory.16 #trim_materials[!provides_trim_material] run item modify entity @s inventory.16 blue:tr/provide_material
execute if items entity @s inventory.17 #trim_materials[!provides_trim_material] run item modify entity @s inventory.17 blue:tr/provide_material
execute if items entity @s inventory.18 #trim_materials[!provides_trim_material] run item modify entity @s inventory.18 blue:tr/provide_material
execute if items entity @s inventory.19 #trim_materials[!provides_trim_material] run item modify entity @s inventory.19 blue:tr/provide_material
execute if items entity @s inventory.20 #trim_materials[!provides_trim_material] run item modify entity @s inventory.20 blue:tr/provide_material
execute if items entity @s inventory.21 #trim_materials[!provides_trim_material] run item modify entity @s inventory.21 blue:tr/provide_material
execute if items entity @s inventory.22 #trim_materials[!provides_trim_material] run item modify entity @s inventory.22 blue:tr/provide_material
execute if items entity @s inventory.23 #trim_materials[!provides_trim_material] run item modify entity @s inventory.23 blue:tr/provide_material
execute if items entity @s inventory.24 #trim_materials[!provides_trim_material] run item modify entity @s inventory.24 blue:tr/provide_material
execute if items entity @s inventory.25 #trim_materials[!provides_trim_material] run item modify entity @s inventory.25 blue:tr/provide_material
execute if items entity @s inventory.26 #trim_materials[!provides_trim_material] run item modify entity @s inventory.26 blue:tr/provide_material
execute if items entity @s hotbar.0 #trim_materials[!provides_trim_material] run item modify entity @s hotbar.0 blue:tr/provide_material
execute if items entity @s hotbar.1 #trim_materials[!provides_trim_material] run item modify entity @s hotbar.1 blue:tr/provide_material
execute if items entity @s hotbar.2 #trim_materials[!provides_trim_material] run item modify entity @s hotbar.2 blue:tr/provide_material
execute if items entity @s hotbar.3 #trim_materials[!provides_trim_material] run item modify entity @s hotbar.3 blue:tr/provide_material
execute if items entity @s hotbar.4 #trim_materials[!provides_trim_material] run item modify entity @s hotbar.4 blue:tr/provide_material
execute if items entity @s hotbar.5 #trim_materials[!provides_trim_material] run item modify entity @s hotbar.5 blue:tr/provide_material
execute if items entity @s hotbar.6 #trim_materials[!provides_trim_material] run item modify entity @s hotbar.6 blue:tr/provide_material
execute if items entity @s hotbar.7 #trim_materials[!provides_trim_material] run item modify entity @s hotbar.7 blue:tr/provide_material
execute if items entity @s hotbar.8 #trim_materials[!provides_trim_material] run item modify entity @s hotbar.8 blue:tr/provide_material