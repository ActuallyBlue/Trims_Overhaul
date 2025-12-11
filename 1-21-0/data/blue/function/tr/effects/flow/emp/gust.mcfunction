summon armor_stand ^ ^ ^1 {Tags:["smithed.entity","smithed.strict"],Invisible:1b,Invulnerable:1b,NoGravity:1b,ArmorItems:[{},{id:"warped_button",components:{enchantments:{"levels":{"blue:tr/gust":1}}}},{},{}],equipment:{legs:{id:"warped_button",components:{enchantments:{"blue:tr/gust":1}}}}}
kill b163102f-0-4-0-1
summon wind_charge ~ ~ ~ {UUID:[I;-1318907857,4,0,1]}
data modify entity b163102f-0-4-0-1 {} merge from storage blue:trims merge.boost
advancement revoke @s only blue:tr/flow_gust