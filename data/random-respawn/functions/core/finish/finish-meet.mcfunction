execute as @a at @s run playsound minecraft:entity.ender_dragon.ambient master @a ~ ~ ~ 0.3 1
title @a title [{"text":"▷▶","color":"yellow"},{"text":" F","color":"#0bdf00"},{"text":"i","color":"#3ceb1c"},{"text":"n","color":"#6df737"},{"text":"i","color":"#6df737"},{"text":"s","color":"#3ceb1c"},{"text":"h ","color":"#0bdf00"},{"text":"◀◁","color":"yellow"}]
scoreboard players set $Timer F-Timer -1

# show sp
execute as @e[tag=First-SP] at @s run function random-respawn:core/finish/show-sp