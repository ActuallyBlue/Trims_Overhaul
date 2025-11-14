title @s actionbar {"translate":"blue.tr.gamble.tunes","fallback":"☺ ♫ Tunes ♫ ☺"}
particle note ~ ~3 ~ 10 4 10 1 128 force
execute store result score #.temp blue.misc run random value 2..22
stopsound @a[distance=..48]
execute if score #.temp blue.misc matches 2 run playsound music_disc.far player @a[x=0] ~ ~ ~ 3 1
execute if score #.temp blue.misc matches 3 run playsound music_disc.cat player @a[x=0] ~ ~ ~ 3 1
execute if score #.temp blue.misc matches 4 run playsound music_disc.mall player @a[x=0] ~ ~ ~ 3 1
execute if score #.temp blue.misc matches 5 run playsound music_disc.stal player @a[x=0] ~ ~ ~ 3 1
execute if score #.temp blue.misc matches 6 run playsound music_disc.ward player @a[x=0] ~ ~ ~ 3 1
execute if score #.temp blue.misc matches 7 run playsound music_disc.chirp player @a[x=0] ~ ~ ~ 3 1
execute if score #.temp blue.misc matches 8 run playsound music_disc.relic player @a[x=0] ~ ~ ~ 3 1
execute if score #.temp blue.misc matches 9 run playsound music_disc.blocks player @a[x=0] ~ ~ ~ 3 1
execute if score #.temp blue.misc matches 10 run playsound music_disc.strad player @a[x=0] ~ ~ ~ 3 1
execute if score #.temp blue.misc matches 11 run playsound music_disc.mellohi player @a[x=0] ~ ~ ~ 3 1
execute if score #.temp blue.misc matches 12 run playsound music_disc.otherside player @a[x=0] ~ ~ ~ 3 1
execute if score #.temp blue.misc matches 13..18 run playsound music_disc.pigstep player @a[x=0] ~ ~ ~ 3 1
execute if score #.temp blue.misc matches 19 run playsound music_disc.precipice player @a[x=0] ~ ~ ~ 3 1
execute if score #.temp blue.misc matches 20 run playsound music_disc.creator player @a[x=0] ~ ~ ~ 3 1
execute if score #.temp blue.misc matches 21..22 run playsound music_disc.creator_music_box player @a[x=0] ~ ~ ~ 3 1