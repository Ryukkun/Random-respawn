#
#
#--------------------

#Success Detect reset
data modify storage random-respawn SpreadSuccess set value 0b


#Test Marker
execute as @a[team=Player] at @s run summon marker ~ ~ ~ {Tags:["SpreadTest"]}


#2048
execute if score $gm F-Temp matches 3 run function random-respawn:core/1-3/spreadtest/2048

#1024
execute if score $gm F-Temp matches 2 run function random-respawn:core/1-3/spreadtest/1024

#512
execute if score $gm F-Temp matches 1 run function random-respawn:core/1-3/spreadtest/512


#kill marker
kill @e[type=marker,tag=SpreadTest]