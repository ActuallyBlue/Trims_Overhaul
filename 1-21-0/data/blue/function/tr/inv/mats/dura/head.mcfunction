playsound item.armor.equip_chain player @s ~ ~ ~ 1 0.6
data modify storage blue:trims temp.trim set string storage blue:trims armor.head.pattern 10
data modify storage blue:trims temp.args set value '_armor_trim_smithing_template"} ~ ~1.4 ~ 0.22 0.22 0.22 0.02 10'
execute if data storage blue:trims temp{trim:"dragon_egg"} run data modify storage blue:trims temp.args set value '"} ~ ~1.4 ~ 0.22 0.22 0.22 0.02 10'
item modify entity @s armor.head blue:shared/remove_trim
function blue:tr/inv/untrim/give with storage blue:trims temp
$data modify storage blue:trims temp.mat set from storage blue:trims materials."$(material)"
function blue:tr/inv/untrim/mat with storage blue:trims temp