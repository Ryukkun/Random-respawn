
#reset(この世に生まれ落ち 早17年 初めてのstrage)
data merge storage random-respawn {StartError:0}

#Player人数
scoreboard players set $PlayerCount F-Meet 0
execute as @a[team=Player] run scoreboard players add $PlayerCount F-Meet 1
execute if score $PlayerCount F-Meet matches ..2 run data merge storage random-respawn {StartError:1}

#Map Center
execute unless entity @e[tag=map-center] run data merge storage random-respawn {StartError:2}


#Error Message
execute if data storage random-respawn {StartError:1} run tellraw @a [{"text":"Error:1　人が足りないよー"}]
execute if data storage random-respawn {StartError:2} run tellraw @a [{"text":"Error:1　map中心ないよー"}]


#いいよ！　スタートだ！ 　いっけええぇぇぇぇぇ
scoreboard players set $CountDown F-Timer 100