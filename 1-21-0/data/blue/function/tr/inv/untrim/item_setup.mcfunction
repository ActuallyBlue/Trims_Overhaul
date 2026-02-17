$summon item ~ ~ ~ {Item:{id:"$(pattern)_armor_trim_smithing_template",components:{custom_data:{blue:trim},enchantment_glint_override:true,bundle_contents:[{id:bow}]}},Tags:["blue.tr.untrim_item","blue.tr.untrim_temp"],PickupDelay:40s}
$data modify storage blue:trims temp.mat set from storage blue:trims materials."$(material)"
function blue:tr/inv/untrim/item_spawn with storage blue:trims temp