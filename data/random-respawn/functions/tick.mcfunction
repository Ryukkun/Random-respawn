#tick
#----------


# Main Game
execute if score $Timer F-Timer matches 0.. run function random-respawn:core/main

# Waiting team-change
execute if score $Timer F-Timer matches -1 run function random-respawn:team/potion-change