# load by schedule
# @s = None?
#----------------------

function random-respawn:core/1-3/spreadplayers/spreadplayers

# 始める時に実行
execute as @a at @s run playsound minecraft:block.note_block.flute master @s ~ ~ ~ 1 2
title @a times 10 70 20
scoreboard players operation $Timer F-Timer = $SetTimer F-Timer
clear @a
execute if data storage random-respawn {Setting:[{MapEnable:1b}]} run function random-respawn:core/1-3/filledmap/get-map

# Spawn Point
execute as @a[team=Player] run loot replace entity @s inventory.8 loot random-respawn:player_head
execute at @a[team=Player] run summon marker ~ ~ ~ {Tags:["First-SP"],NoGravity:1b}
execute at @a[team=Player] run forceload add ~ ~
execute as @a[team=Player] at @s run scoreboard players operation @e[tag=First-SP,sort=nearest,limit=1] F-Member = @s F-Member
schedule function random-respawn:core/countdown/sp/schedule-sp 10t