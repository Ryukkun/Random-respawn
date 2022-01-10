execute as @a at @s run playsound minecraft:block.note_block.flute master @s ~ ~ ~ 1 2
title @a times 10 70 20
scoreboard players operation $Timer F-Timer = $SetTimer F-Timer
#function random-respawn:core/spreadplayers/spreadplayers