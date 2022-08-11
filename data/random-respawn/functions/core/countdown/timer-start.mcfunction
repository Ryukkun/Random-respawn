# load by schedule
# @s = None?
#----------------------

# TP
execute as @a[team=Player] at @e[tag=First-SP] if score @s F-Member = @e[tag=First-SP,limit=1,distance=..1] F-Member run tp ~ ~ ~
execute as @a[team=Spec] run tp @r[team=Player]

# 始める時に実行
execute as @a at @s run playsound minecraft:block.note_block.flute master @s ~ ~ ~ 2 2 1
title @a times 10 70 20
scoreboard players operation $Timer F-Timer = $SetTimer F-Timer
clear @a
execute as @a[team=Player] at @s run spawnpoint @s ~ ~ ~
execute store result score @a[team=Player] F-GameCount run scoreboard players add $ F-GameCount 1
data modify storage random-respawn: MeetSuccess set value 0b
execute if score $spec-gm F-Temp matches 1 run gamemode creative @a[team=Spec]
execute if score $spec-gm F-Temp matches 2 run gamemode spectator @a[team=Spec]
gamemode survival @a[team=Player]
schedule clear random-respawn:core/sp/forceload


execute if data storage random-respawn: {Setting:[{MapEnable:1b}]} run function random-respawn:core/filledmap/get-map