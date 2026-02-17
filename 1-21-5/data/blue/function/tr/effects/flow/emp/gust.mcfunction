$summon armor_stand ^ ^ ^1 {Tags:["smithed.entity","smithed.strict"],Invisible:1b,Invulnerable:1b,NoGravity:1b,equipment:{legs:{id:"warped_button",components:{"minecraft:lore":[{"translate":"blue.tr.please_report","fallback":"Please report this item in the Trims Overhaul Discord, minor issue"}],enchantments:{"blue:tr/gust":$(int)}}}}}
kill b163102f-0-4-0-1
summon wind_charge ~ ~ ~ {UUID:[I;-1318907857,4,0,1]}
data modify entity b163102f-0-4-0-1 {} merge from storage blue:trims merge.boost
advancement revoke @s only blue:tr/flow_gust