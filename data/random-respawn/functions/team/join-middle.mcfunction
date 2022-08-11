#   load by tellraw
#   途中参加
#--------------------------------------------

tag @s add F-In-The-Middle

execute at @s run function random-respawn:core/spreadtest/alone-spread
execute unless data storage random-respawn: {SpreadSuccess:0b} run scoreboard players set @s F-Timer 0
execute unless data storage random-respawn: {SpreadSuccess:0b} run function random-respawn:core/sp/alone-forceload

execute if data storage random-respawn: {SpreadSuccess:0b} run tellraw @a[tag=F-Fin-Book] [{"text":"Error:5 拡散させるスペースが足りませんでした"}]