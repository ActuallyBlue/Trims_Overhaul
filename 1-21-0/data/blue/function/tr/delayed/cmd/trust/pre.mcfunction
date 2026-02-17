tag @a[distance=..12] add blue.tr.trust_nearby
$execute as @a[advancements={blue:tr/trust={$(trim)=true}},tag=blue.tr.trust_nearby,sort=nearest] run function blue:tr/delayed/cmd/trust/player {function:"true"}
$execute as @a[advancements={blue:tr/trust={$(trim)=true}},tag=!blue.tr.trust_nearby] run function blue:tr/delayed/cmd/trust/player {function:"true"}
$execute as @a[advancements={blue:tr/trust={$(trim)=false}},tag=blue.tr.trust_nearby,sort=nearest] run function blue:tr/delayed/cmd/trust/player {function:"false"}
$execute as @a[advancements={blue:tr/trust={$(trim)=false}},tag=!blue.tr.trust_nearby] run function blue:tr/delayed/cmd/trust/player {function:"false"}
tag @a[tag=blue.tr.trust_nearby,distance=..13] remove blue.tr.trust_nearby