#
#
#----------------------------------------

# reset data
data merge storage random-respawn {SpreadSuccess:0b}

#Spread
execute store success storage random-respawn SpreadSuccess byte 1 at @e[tag=map-center,limit=1] run spreadplayers ~ ~ 700 1797 false @a[team=Player]

execute store success storage random-respawn SpreadSuccess byte 1 at @e[tag=map-center,limit=1] run spreadplayers ~ ~ 400 1797 false @a[team=Player]