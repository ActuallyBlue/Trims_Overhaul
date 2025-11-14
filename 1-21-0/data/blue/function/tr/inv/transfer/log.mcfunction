execute unless score #.tr.armor_ownership blue.config matches 1 run data modify storage blue:data trims.logs.transfer append from storage blue:data trims.logs.append
data remove storage blue:data trims.logs.append.target
data remove storage blue:data trims.logs.append.stolen