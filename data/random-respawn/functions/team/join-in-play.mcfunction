execute if score $timer F-Timer matches 1.. run team join Spec @s
execute if score $timer F-Timer matches 1.. at @e[tag=map-center,limit=1] run tp @s @p[team=Player]
execute if score $timer F-Timer matches 1.. at @s run playsound minecraft:entity.guardian.death master @s ~ ~ ~ 1 