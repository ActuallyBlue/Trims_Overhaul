$give @s $(pattern)_armor_trim_smithing_template[custom_data={blue:trim},enchantment_glint_override=true,bundle_contents=[{id:bow}]]
$data modify storage blue:trims temp.mat set from storage blue:trims materials."$(material)"
$particle item{item:"$(pattern)_armor_trim_smithing_template"} ~ ~ ~ 0.3 0.3 0.3 0.05 15
function blue:tr/inv/untrim/mat with storage blue:trims temp