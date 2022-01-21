# load by random-respawn/core/filledmap/get-map
# @s = Mapのdata変更する用ArmorStand
#--------------------------------------------

# なんで decoration の ID は str じゃないと安定しないんだ

scoreboard players add $random_str F-Temp 1
execute if score $random_str F-Temp matches 100 run scoreboard players set $random_str F-Temp 0

# 分別
execute if score $random_str F-Temp matches 0..19 run function random-respawn:core/1-3/random-str/0-19
execute if score $random_str F-Temp matches 20..39 run function random-respawn:core/1-3/random-str/20-39
execute if score $random_str F-Temp matches 40..59 run function random-respawn:core/1-3/random-str/40-59
execute if score $random_str F-Temp matches 60..79 run function random-respawn:core/1-3/random-str/60-79
execute if score $random_str F-Temp matches 80..99 run function random-respawn:core/1-3/random-str/80-99