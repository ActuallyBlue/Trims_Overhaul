execute unless score #.tr.armor_ownership blue.config matches 1 run data modify storage blue:trims logs.transfer append from storage blue:trims logs.append
data remove storage blue:trims logs.append.target
data remove storage blue:trims logs.append.stolen