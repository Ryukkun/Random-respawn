# load by random-respawn:tick
#
# boatで足場補助
#------------------------------------------------------------

execute at @e[tag=map-center,limit=1] if entity @a[distance=..10] unless entity @e[type=boat,tag=F-map-boat,distance=..10] run summon boat ~ ~-1 ~ {NoGravity:1b,Type:"oak",Tags:["F-map-boat"]}
execute at @e[tag=map-center,limit=1] unless entity @a[distance=..10] if entity @e[type=boat,tag=F-map-boat,distance=..10] run kill @e[type=boat,tag=F-map-boat]