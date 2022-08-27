# load by random-respawn:core/sp/alone-schedule
# 孤高のスタート
#----------------------

# TP
execute at @e[tag=First-SP] if score @s F-Member = @e[tag=First-SP,limit=1,distance=..1] F-Member run tp ~ ~ ~

# 始める時に実行
playsound minecraft:block.note_block.flute master @s ~ ~ ~ 2 2 1
spawnpoint @s ~ ~ ~
gamemode survival @s
team join Player @s
schedule clear random-respawn:core/sp/alone-schedule
clear @s
effect clear @a
effect give @a[team=Player] fire_resistance 10 0 true
effect give @s[team=Player] resistance 5 100 true
effect give @s[team=Player] saturation 1 100 true
effect give @s[team=Player] regeneration 5 120 true
tag @s remove F-In-The-Middle


execute if data storage random-respawn: {Setting:[{MapEnable:1b}]} at @s as @e[tag=First-SP] if score @p F-Member = @s F-Member at @s run function random-respawn:core/filledmap/decoration-map