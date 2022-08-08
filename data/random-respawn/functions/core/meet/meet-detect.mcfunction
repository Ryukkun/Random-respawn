# load by random-respawn:core/main
# @s=none
#-----------------------------

#Player count
function random-respawn:core/player-count
scoreboard players set @a F-Meet 0
execute as @a[team=Player] at @s as @a[distance=..10,team=Player] run scoreboard players add @p F-Meet 1

execute as @a[team=Player] if score @s F-Meet = $PlayerCount F-Meet run data modify storage random-respawn: MeetSuccess set value 1b

#particle
execute as @a[team=Player] at @s run function random-respawn:core/meet/meet-particle


#finish meet
execute if data storage random-respawn: {MeetSuccess:1b} run function random-respawn:core/finish/finish-meet