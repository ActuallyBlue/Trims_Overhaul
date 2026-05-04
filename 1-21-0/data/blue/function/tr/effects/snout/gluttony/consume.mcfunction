execute if entity @s[advancements={blue:tr/gluttony={enchanted_golden_apple=true}}] run function blue:tr/effects/snout/gluttony/enchanted
effect give @s[advancements={blue:tr/gluttony={golden_apple=true}}] resistance 6 0
playsound entity.generic.eat player @a ~ ~ ~ 1.25 0.6
advancement revoke @s only blue:tr/gluttony
effect give @s saturation 2 0 true