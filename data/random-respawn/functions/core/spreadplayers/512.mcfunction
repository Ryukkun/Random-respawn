#
#
#----------------------------------------


#Spread
execute if data storage random-respawn {SpreadSuccess:400} at @e[tag=map-center,limit=1] run spreadplayers ~ ~ 400 256 false @a[team=Player]

execute if data storage random-respawn {SpreadSuccess:300} at @e[tag=map-center,limit=1] run spreadplayers ~ ~ 300 256 false @a[team=Player]

execute if data storage random-respawn {SpreadSuccess:200} at @e[tag=map-center,limit=1] run spreadplayers ~ ~ 200 256 false @a[team=Player]