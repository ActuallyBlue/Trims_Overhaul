$playsound entity.firework_rocket.large_blast_far player @a ~ ~ ~ $(volume) 0.5
$playsound entity.firework_rocket.twinkle_far player @a ~ ~ ~ $(volume) 0.5
$particle electric_spark ~ ~1 ~ 0.4 0.9 0.4 $(speed) $(particles)
$effect give @s saturation $(saturation) 0 true
$effect give @s glowing $(duration) 44
$effect give @s speed $(duration) 1
$effect give @s haste $(duration) 1