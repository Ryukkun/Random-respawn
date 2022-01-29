# load by random-respawn:core/countdown/timer-start
# @s = None?
#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------


# Edit data
data modify storage minecraft:random-respawn FilledMap[0] merge value {Count:1b,tag:{Decorations:[],display:{MapColor:3308077},HideFlags:1,Enchantments:[{id:"minecraft:binding_curse",lvl:4s},{id:"minecraft:vanishing_curse",lvl:1s}]}}

# map-centerに移植
data modify entity @e[tag=map-center,limit=1] ArmorItems[3] set from storage minecraft:random-respawn FilledMap[0]


# みんなに配ろう!!
execute as @e[tag=First-SP] at @s run function random-respawn:core/1-3/filledmap/decoration-map