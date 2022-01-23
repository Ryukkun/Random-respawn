# load by random-respawn:core/countdown/timer-start
# @s = None?
#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------


# Edit data
data modify storage minecraft:random-respawn FilledMap[0] merge value {Count:1b,tag:{display:{MapColor:3308077},HideFlags:1,Enchantments:[{id:"minecraft:binding_curse",lvl:4s},{id:"minecraft:vanishing_curse",lvl:1s}]}}

# map-centerに移植
data modify entity @e[tag=map-center,limit=1] ArmorItems[3] set from storage minecraft:random-respawn FilledMap[0]


# みんなに配ろう!!
execute as @a[team=Player] at @s run summon armor_stand ~ ~-5 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["ILoveFilledMap"]}