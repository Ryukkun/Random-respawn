#tick
#----------


# Main Game
execute if score $Timer F-Timer matches 0.. run function random-respawn:core/main

# Waiting 
execute if score $Timer F-Timer matches -1 run function random-respawn:team/potion-change
execute if score $Timer F-Timer matches -1 run function random-respawn:map-center/boat

# Book Reload
execute if score $Book-R F-Temp matches 1.. run function random-respawn:book/reload-book
