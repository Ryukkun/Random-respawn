title @a subtitle [{"text":"▶","color":"gray","bold": true,"font": "uniform"},{"text":" 1 ","color":"aqua"},{"text":"◀","color":"gray","bold": true}]
title @a title ""
execute as @a at @s run playsound minecraft:block.note_block.flute master @s ~ ~ ~ 2 1 1


#Spread Test
function random-respawn:core/spreadtest/spreadtest
execute unless data storage random-respawn: {SpreadSuccess:0b} run scoreboard players set $SpreadTestChunk F-Timer 0
execute unless data storage random-respawn: {SpreadSuccess:0b} run function random-respawn:core/sp/forceload

execute if data storage random-respawn: {SpreadSuccess:0b} run tellraw @a [{"text":"Error:5 拡散させるスペースが足りませんでした"}]