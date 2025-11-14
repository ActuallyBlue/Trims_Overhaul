playsound block.suspicious_sand.place player @a
kill
execute if block ~ ~ ~ sand align xyz run return run particle falling_dust{block_state:{Name:sand}} ~0.5 ~0.5 ~0.5 0.35 0.4 0.35 0 32
execute if block ~1 ~ ~ sand positioned ~1 ~ ~ align xyz run return run particle falling_dust{block_state:{Name:sand}} ~0.5 ~0.5 ~0.5 0.35 0.4 0.35 0 32
execute if block ~-1 ~ ~ sand positioned ~-1 ~ ~ align xyz run return run particle falling_dust{block_state:{Name:sand}} ~0.5 ~0.5 ~0.5 0.35 0.4 0.35 0 32
execute if block ~ ~ ~1 sand positioned ~ ~ ~1 align xyz run return run particle falling_dust{block_state:{Name:sand}} ~0.5 ~0.5 ~0.5 0.35 0.4 0.35 0 32
execute if block ~ ~ ~-1 sand positioned ~ ~ ~-1 align xyz run return run particle falling_dust{block_state:{Name:sand}} ~0.5 ~0.5 ~0.5 0.35 0.4 0.35 0 32
execute if block ~1 ~ ~1 sand positioned ~1 ~ ~1 align xyz run return run particle falling_dust{block_state:{Name:sand}} ~0.5 ~0.5 ~0.5 0.35 0.4 0.35 0 32
execute if block ~-1 ~ ~1 sand positioned ~-1 ~ ~1 align xyz run return run particle falling_dust{block_state:{Name:sand}} ~0.5 ~0.5 ~0.5 0.35 0.4 0.35 0 32
execute if block ~1 ~ ~-1 sand positioned ~1 ~ ~-1 align xyz run return run particle falling_dust{block_state:{Name:sand}} ~0.5 ~0.5 ~0.5 0.35 0.4 0.35 0 32
execute if block ~-1 ~ ~-1 sand positioned ~-1 ~ ~-1 align xyz run return run particle falling_dust{block_state:{Name:sand}} ~0.5 ~0.5 ~0.5 0.35 0.4 0.35 0 32
particle falling_dust{block_state:{Name:sand}} ~ ~ ~ 0.35 0.4 0.35 0 32