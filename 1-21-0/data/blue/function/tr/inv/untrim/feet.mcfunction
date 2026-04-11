data modify storage blue:trims temp.trim set string storage blue:trims inventory[{Slot:0b}].components."minecraft:trim".pattern 10
data modify storage blue:trims temp.args set value '_armor_trim_smithing_template"} ~ ~0.3 ~ 0.2 0.2 0.2 0.02 8'
execute if data storage blue:trims temp{trim:"dragon_egg"} run data modify storage blue:trims temp.args set value '"} ~ ~0.3 ~ 0.2 0.2 0.2 0.02 8'
function blue:tr/inv/untrim/give with storage blue:trims temp
$data modify storage blue:trims temp.mat set from storage blue:trims materials."$(material)"
function blue:tr/inv/untrim/mat with storage blue:trims temp