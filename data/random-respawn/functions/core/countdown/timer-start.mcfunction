# load by schedule
# @s = None?
#----------------------

function random-respawn:core/spreadplayers/spreadplayers

execute as @a at @s run playsound minecraft:block.note_block.flute master @s ~ ~ ~ 1 2
title @a times 10 70 20
execute unless data storage random-respawn {SpreadSuccess:0b} run scoreboard players operation $Timer F-Timer = $SetTimer F-Timer
tag @a remove MapHat
execute unless data storage random-respawn {SpreadSuccess:0b} run function random-respawn:core/filledmap/get-map

#4
execute if data storage random-respawn {SpreadSuccess:0b} run tellraw @a [{"text":"Error 拡散に失敗しました"}]