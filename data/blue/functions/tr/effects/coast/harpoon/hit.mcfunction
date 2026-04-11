tag @s[advancements={blue:tr/harpoon={kill=true}}] add blue.tr.coast.propel
execute if entity @s[advancements={blue:tr/harpoon={kill=false}}] as @e[tag=!blue.tr.coast.checked,nbt={DealtDamage:1b,inGround:0b},type=trident] run function blue:tr/effects/coast/harpoon/find
advancement revoke @s only blue:tr/harpoon