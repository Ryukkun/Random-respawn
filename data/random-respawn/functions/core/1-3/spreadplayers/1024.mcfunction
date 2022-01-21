#
#
#----------------------------------------


#Spread
execute if data storage random-respawn {SpreadSuccess:700} at @e[tag=map-center,limit=1] run spreadplayers ~ ~ 700 448 false @a[team=Player]

execute if data storage random-respawn {SpreadSuccess:400} at @e[tag=map-center,limit=1] run spreadplayers ~ ~ 400 448 false @a[team=Player]