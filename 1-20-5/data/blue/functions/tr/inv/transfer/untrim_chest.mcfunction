$give @s $(pattern)_armor_trim_smithing_template[custom_data={blue:trim},enchantment_glint_override=true]
$data modify storage blue:data trims.temp.transfer.mat set from storage blue:data trims.materials."$(material)"
$particle item{item:"$(pattern)_armor_trim_smithing_template"} ~ ~ ~ 0.3 0.3 0.3 0.05 15
function blue:tr/inv/transfer/untrim_mat with storage blue:data trims.temp.transfer