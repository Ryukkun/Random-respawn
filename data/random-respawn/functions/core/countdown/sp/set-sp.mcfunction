loot give @s loot random-respawn:player_head
data modify entity @e[tag=First-SP,limit=1,sort=nearest] data set from entity @s Inventory[0]
clear @s player_head
execute if data entity @e[tag=First-SP,limit=1,sort=nearest] {data:{id:"minecraft:player_head"}} run tag @s add Did-MCID

# 失敗
execute as @s[tag=!Did-MCID] run schedule clear random-respawn:core/countdown/sp/schedule-sp
execute as @s[tag=!Did-MCID] run schedule function random-respawn:core/countdown/sp/schedule-sp 1s