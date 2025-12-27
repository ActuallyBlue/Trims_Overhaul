item replace block 200600 2 200600 container.7 from entity @s armor.head
item replace block 200600 2 200600 container.6 from entity @s armor.chest
item replace block 200600 2 200600 container.5 from entity @s armor.legs
item replace block 200600 2 200600 container.4 from entity @s armor.feet
data remove block 200600 2 200600 Items[].tag.Trim
item replace entity @s armor.head from block 200600 2 200600 container.7
item replace entity @s armor.chest from block 200600 2 200600 container.6
item replace entity @s armor.legs from block 200600 2 200600 container.5
item replace entity @s armor.feet from block 200600 2 200600 container.4
advancement revoke @s[tag=!blue.tr.wayfinder,tag=!blue.tr.silence,tag=!blue.tr.shaper,tag=!blue.tr.raiser,tag=!blue.tr.sentry,tag=!blue.tr.spire,tag=!blue.tr.coast,tag=!blue.tr.snout,tag=!blue.tr.ward,tag=!blue.tr.dune,tag=!blue.tr.wild,tag=!blue.tr.tide,tag=!blue.tr.host,tag=!blue.tr.eye,tag=!blue.tr.rib,tag=!blue.tr.vex] only blue:tr/tags trim_limit