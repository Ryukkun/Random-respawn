#
#
#--------------------

#reset
function random-respawn:core/reset-tags

#Success Detect reset
data modify storage random-respawn SpreadSuccess set value 0b


#Test Marker
execute as @a[team=Player] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Marker:1b,Pose:{Body:[0f,4f,2f],LeftLeg:[0f,0f,342f],LeftArm:[0f,0f,219f],RightArm:[0f,0f,24f]},Tags:["First-SP"]}


#4086
execute if score $gm F-Temp matches 3 run function random-respawn:core/4/spreadtest/4086


# force load
execute at @e[tag=First-SP] run forceload add ~ ~