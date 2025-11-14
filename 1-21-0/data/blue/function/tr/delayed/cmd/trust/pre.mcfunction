$execute as @a[advancements={blue:tr/trust={$(trim)=true}},distance=..12,sort=nearest] run function blue:tr/delayed/cmd/trust/player {function:"true"}
$execute as @a[advancements={blue:tr/trust={$(trim)=true}},distance=12.001..] run function blue:tr/delayed/cmd/trust/player {function:"true"}
$execute as @a[advancements={blue:tr/trust={$(trim)=false}},distance=..12,sort=nearest] run function blue:tr/delayed/cmd/trust/player {function:"false"}
$execute as @a[advancements={blue:tr/trust={$(trim)=false}},distance=12.001..] run function blue:tr/delayed/cmd/trust/player {function:"false"}