# load by schedule
# @s = None?
#----------------------

execute as @a at @e[tag=First-SP] if score @s F-Member = @e[tag=First-SP,limit=1,distance=..1] F-Member run tp ~ ~ ~

# 始める時に実行
execute as @a at @s run playsound minecraft:block.note_block.flute master @s ~ ~ ~ 1 2
title @a times 10 70 20
scoreboard players operation $Timer F-Timer = $SetTimer F-Timer
clear @a
scoreboard players set $StopW F-Timer 0
execute as @a[team=Player] at @s run spawnpoint @s ~ ~ ~


# 失敗したのか..
#execute if data storage random-respawn {SpreadSuccess:0b} run tellraw @a [{"text":"Error 拡散に失敗しました"}]