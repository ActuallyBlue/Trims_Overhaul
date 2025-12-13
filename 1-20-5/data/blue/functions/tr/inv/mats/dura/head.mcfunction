playsound item.armor.equip_chain player @s ~ ~ ~ 1 0.6
item modify entity @s armor.head blue:shared/remove_trim
$particle item{item:"$(pattern)_armor_trim_smithing_template"} ~ ~1.7 ~ 0.22 0.25 0.22 0.02 10
$give @s $(pattern)_armor_trim_smithing_template[custom_data={blue:trim},enchantment_glint_override=true]
$data modify storage blue:trims temp.mat set from storage blue:trims materials."$(material)"
function blue:tr/inv/transfer/untrim_mat with storage blue:trims temp