execute if entity @s[advancements={blue:tr/provide_material={cursor=true}}] run item modify entity @s player.cursor blue:provide_material
execute if entity @s[advancements={blue:tr/provide_material={cursor=true}}] run return run advancement revoke @s only blue:tr/provide_material
execute store success score #.temp blue.misc run clear @s #trim_materials[!provides_trim_material] 0
execute if score #.temp blue.misc matches 0 run return run advancement revoke @s only blue:tr/provide_material
execute if items entity @s weapon.offhand #trim_materials[!provides_trim_material] run item modify entity @s weapon.offhand blue:provide_material
execute if items entity @s inventory.0 #trim_materials[!provides_trim_material] run item modify entity @s inventory.0 blue:provide_material
execute if items entity @s inventory.1 #trim_materials[!provides_trim_material] run item modify entity @s inventory.1 blue:provide_material
execute if items entity @s inventory.2 #trim_materials[!provides_trim_material] run item modify entity @s inventory.2 blue:provide_material
execute if items entity @s inventory.3 #trim_materials[!provides_trim_material] run item modify entity @s inventory.3 blue:provide_material
execute if items entity @s inventory.4 #trim_materials[!provides_trim_material] run item modify entity @s inventory.4 blue:provide_material
execute if items entity @s inventory.5 #trim_materials[!provides_trim_material] run item modify entity @s inventory.5 blue:provide_material
execute if items entity @s inventory.6 #trim_materials[!provides_trim_material] run item modify entity @s inventory.6 blue:provide_material
execute if items entity @s inventory.7 #trim_materials[!provides_trim_material] run item modify entity @s inventory.7 blue:provide_material
execute if items entity @s inventory.8 #trim_materials[!provides_trim_material] run item modify entity @s inventory.8 blue:provide_material
execute if items entity @s inventory.9 #trim_materials[!provides_trim_material] run item modify entity @s inventory.9 blue:provide_material
execute if items entity @s inventory.10 #trim_materials[!provides_trim_material] run item modify entity @s inventory.10 blue:provide_material
execute if items entity @s inventory.11 #trim_materials[!provides_trim_material] run item modify entity @s inventory.11 blue:provide_material
execute if items entity @s inventory.12 #trim_materials[!provides_trim_material] run item modify entity @s inventory.12 blue:provide_material
execute if items entity @s inventory.13 #trim_materials[!provides_trim_material] run item modify entity @s inventory.13 blue:provide_material
execute if items entity @s inventory.14 #trim_materials[!provides_trim_material] run item modify entity @s inventory.14 blue:provide_material
execute if items entity @s inventory.15 #trim_materials[!provides_trim_material] run item modify entity @s inventory.15 blue:provide_material
execute if items entity @s inventory.16 #trim_materials[!provides_trim_material] run item modify entity @s inventory.16 blue:provide_material
execute if items entity @s inventory.17 #trim_materials[!provides_trim_material] run item modify entity @s inventory.17 blue:provide_material
execute if items entity @s inventory.18 #trim_materials[!provides_trim_material] run item modify entity @s inventory.18 blue:provide_material
execute if items entity @s inventory.19 #trim_materials[!provides_trim_material] run item modify entity @s inventory.19 blue:provide_material
execute if items entity @s inventory.20 #trim_materials[!provides_trim_material] run item modify entity @s inventory.20 blue:provide_material
execute if items entity @s inventory.21 #trim_materials[!provides_trim_material] run item modify entity @s inventory.21 blue:provide_material
execute if items entity @s inventory.22 #trim_materials[!provides_trim_material] run item modify entity @s inventory.22 blue:provide_material
execute if items entity @s inventory.23 #trim_materials[!provides_trim_material] run item modify entity @s inventory.23 blue:provide_material
execute if items entity @s inventory.24 #trim_materials[!provides_trim_material] run item modify entity @s inventory.24 blue:provide_material
execute if items entity @s inventory.25 #trim_materials[!provides_trim_material] run item modify entity @s inventory.25 blue:provide_material
execute if items entity @s inventory.26 #trim_materials[!provides_trim_material] run item modify entity @s inventory.26 blue:provide_material
execute if items entity @s hotbar.0 #trim_materials[!provides_trim_material] run item modify entity @s hotbar.0 blue:provide_material
execute if items entity @s hotbar.1 #trim_materials[!provides_trim_material] run item modify entity @s hotbar.1 blue:provide_material
execute if items entity @s hotbar.2 #trim_materials[!provides_trim_material] run item modify entity @s hotbar.2 blue:provide_material
execute if items entity @s hotbar.3 #trim_materials[!provides_trim_material] run item modify entity @s hotbar.3 blue:provide_material
execute if items entity @s hotbar.4 #trim_materials[!provides_trim_material] run item modify entity @s hotbar.4 blue:provide_material
execute if items entity @s hotbar.5 #trim_materials[!provides_trim_material] run item modify entity @s hotbar.5 blue:provide_material
execute if items entity @s hotbar.6 #trim_materials[!provides_trim_material] run item modify entity @s hotbar.6 blue:provide_material
execute if items entity @s hotbar.7 #trim_materials[!provides_trim_material] run item modify entity @s hotbar.7 blue:provide_material
execute if items entity @s hotbar.8 #trim_materials[!provides_trim_material] run item modify entity @s hotbar.8 blue:provide_material