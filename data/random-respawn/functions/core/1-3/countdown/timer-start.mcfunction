# load by schedule
# @s = None?
#----------------------

function random-respawn:core/1-3/spreadplayers/spreadplayers

# 始める時に実行
execute as @a at @s run playsound minecraft:block.note_block.flute master @s ~ ~ ~ 1 2
title @a times 10 70 20
scoreboard players operation $Timer F-Timer = $SetTimer F-Timer
clear @a
scoreboard players set $StopW F-Timer 0
execute as @a[team=Player] at @s run function random-respawn:core/sp/summon-sp
execute if data storage random-respawn {Setting:[{MapEnable:1b}]} run function random-respawn:core/1-3/filledmap/get-map