#
#
#----------------------------------------


#Spread
execute if data storage random-respawn {SpreadSuccess:500} at @e[tag=map-center,limit=1] run spreadplayers ~ ~ 500 224 false @a[team=Player]

execute if data storage random-respawn {SpreadSuccess:300} at @e[tag=map-center,limit=1] run spreadplayers ~ ~ 300 224 false @a[team=Player]