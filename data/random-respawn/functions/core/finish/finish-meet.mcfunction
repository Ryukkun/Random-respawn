execute as @a at @s run playsound minecraft:entity.player.levelup ambient @s ~ ~ ~ 2 2 1
execute at @r[team=Player] run particle minecraft:end_rod ~ ~ ~ 5 2 5 0.6 200
title @a title [{"text":"▷▶","color":"yellow","bold": true,"font": "uniform"},{"text":" F","color":"#0bdf00"},{"text":"i","color":"#3ceb1c"},{"text":"n","color":"#6df737"},{"text":"i","color":"#6df737"},{"text":"s","color":"#3ceb1c"},{"text":"h ","color":"#0bdf00"},{"text":"◀◁","color":"yellow"}]
scoreboard players set $Timer F-Timer -1
item modify entity @a[team=Player,nbt={Inventory:[{Slot:103b,id:"minecraft:filled_map"}]}] armor.head random-respawn:map-enchants
execute as @a[tag=F-Fin-Book] run function random-respawn:book/get-book
tag @a[tag=F-Fin-Book] remove F-Fin-Book
effect clear @a[team=Spec] night_vision

# show sp
execute as @e[tag=First-SP] at @s run function random-respawn:core/finish/show-sp