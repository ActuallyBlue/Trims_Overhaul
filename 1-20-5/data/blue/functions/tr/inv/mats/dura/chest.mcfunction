playsound item.armor.equip_chain player @s ~ ~ ~ 1 0.6
item modify entity @s armor.chest blue:shared/remove_trim
$particle item{item:"$(pattern)_armor_trim_smithing_template"} ~ ~1.25 ~ 0.3 0.3 0.3 0.05 15
$give @s $(pattern)_armor_trim_smithing_template[custom_data={blue:trim},enchantment_glint_override=true]
$data modify storage blue:trims temp.mat set from storage blue:trims materials."$(material)"
function blue:tr/inv/transfer/untrim_mat with storage blue:trims temp