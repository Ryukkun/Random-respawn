#
#
#----------------------------------------


#Spread
execute if data storage random-respawn {SpreadSuccess:700} at @e[tag=map-center,limit=1] run spreadplayers ~ ~ 700 2048 false @a[team=Player]

execute if data storage random-respawn {SpreadSuccess:400} at @e[tag=map-center,limit=1] run spreadplayers ~ ~ 400 2048 false @a[team=Player]

execute if data storage random-respawn {SpreadSuccess:200} at @e[tag=map-center,limit=1] run spreadplayers ~ ~ 200 2048 false @a[team=Player]