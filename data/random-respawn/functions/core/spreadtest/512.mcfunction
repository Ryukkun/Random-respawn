#
#
#----------------------------------------


#Spread
execute if data storage random-respawn {SpreadSuccess:0b} store success storage random-respawn SpreadSuccess byte 1 at @e[tag=map-center,limit=1] run spreadplayers ~ ~ 500 224 false @e[type=marker,tag=SpreadTest]
execute if data storage random-respawn {SpreadSuccess:1b} run data modify storage random-respawn SpreadSuccess set value 500

execute if data storage random-respawn {SpreadSuccess:0b} store success storage random-respawn SpreadSuccess byte 1 at @e[tag=map-center,limit=1] run spreadplayers ~ ~ 300 224 false @e[type=marker,tag=SpreadTest]
execute if data storage random-respawn {SpreadSuccess:1b} run data modify storage random-respawn SpreadSuccess set value 300