#
#
#----------------------------------------


#Spread
execute if data storage random-respawn {SpreadSuccess:0b} store success storage random-respawn SpreadSuccess byte 1 at @e[tag=map-center,limit=1] run spreadplayers ~ ~ 700 448 false @e[tag=First-SP]

execute if data storage random-respawn {SpreadSuccess:0b} store success storage random-respawn SpreadSuccess byte 1 at @e[tag=map-center,limit=1] run spreadplayers ~ ~ 400 448 false @e[tag=First-SP]