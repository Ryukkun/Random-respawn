# 乱数生成
summon marker ~ ~ ~ {Tags:["RandomNF"]}
execute store result score @s F-Temp run data get entity @e[tag=RandomNF,distance=..0.00001,limit=1] UUID[0]
kill @e[tag=RandomNF,distance=..0.00001]
data get entity @p 