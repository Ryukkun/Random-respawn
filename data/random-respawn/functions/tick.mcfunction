#tick
#----------


# Main Game
execute if score $Timer F-Timer matches 0.. run function random-respawn:core/main

# Waiting 
execute if score $Timer F-Timer matches -1 run function random-respawn:team/potion-change
execute if score $Timer F-Timer matches -1 run function random-respawn:map-center/boat
execute if score $Timer F-Timer matches -1 as @e[tag=map-center,limit=1] unless score @s F-GameCount matches 1.. run scoreboard players operation @s F-GameCount = $gm F-Temp

# Book Reload
execute if score $Book-R F-Temp matches 1.. run function random-respawn:book/reload-book
