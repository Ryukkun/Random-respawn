execute if score $timer F-Timer matches 0.. run team join Spec @s
execute if score $timer F-Timer matches 0.. at @e[tag=map-center,limit=1] run tp @s @p[team=Player]
execute if score $timer F-Timer matches 0.. at @s run playsound minecraft:entity.guardian.death master @s ~ ~ ~ 1