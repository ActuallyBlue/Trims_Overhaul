kill
playsound block.suspicious_sand.place player @a
execute if block ~ ~ ~ sand align xyz run particle falling_dust sand ~0.5 ~0.5 ~0.5 0.35 0.4 0.35 0 32
execute if block ~1 ~ ~ sand positioned ~1 ~ ~ align xyz run particle falling_dust sand ~0.5 ~0.5 ~0.5 0.35 0.4 0.35 0 32
execute if block ~-1 ~ ~ sand positioned ~-1 ~ ~ align xyz run particle falling_dust sand ~0.5 ~0.5 ~0.5 0.35 0.4 0.35 0 32
execute if block ~ ~ ~1 sand positioned ~ ~ ~1 align xyz run particle falling_dust sand ~0.5 ~0.5 ~0.5 0.35 0.4 0.35 0 32
execute if block ~ ~ ~-1 sand positioned ~ ~ ~-1 align xyz run particle falling_dust sand ~0.5 ~0.5 ~0.5 0.35 0.4 0.35 0 32
execute if block ~1 ~ ~1 sand positioned ~1 ~ ~1 align xyz run particle falling_dust sand ~0.5 ~0.5 ~0.5 0.35 0.4 0.35 0 32
execute if block ~-1 ~ ~1 sand positioned ~-1 ~ ~1 align xyz run particle falling_dust sand ~0.5 ~0.5 ~0.5 0.35 0.4 0.35 0 32
execute if block ~1 ~ ~-1 sand positioned ~1 ~ ~-1 align xyz run particle falling_dust sand ~0.5 ~0.5 ~0.5 0.35 0.4 0.35 0 32
execute if block ~-1 ~ ~-1 sand positioned ~-1 ~ ~-1 align xyz run particle falling_dust sand ~0.5 ~0.5 ~0.5 0.35 0.4 0.35 0 32
execute unless block ~ ~ ~ sand unless block ~1 ~ ~ sand unless block ~-1 ~ ~ sand unless block ~ ~ ~1 sand unless block ~ ~ ~-1 sand unless block ~1 ~ ~1 sand unless block ~-1 ~ ~1 sand unless block ~1 ~ ~-1 sand unless block ~-1 ~ ~-1 sand run particle falling_dust sand ~ ~ ~ 0.35 0.4 0.35 0 32