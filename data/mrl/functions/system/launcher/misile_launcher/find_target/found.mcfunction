#########################################################
## Minecraft Rocket Launcher                           ##
##   MC-Version: JE 1.16.5                             ##
##   Author    : @KizahashiLuca                        ##
##   Date      : 02 May 2021                           ##
##   Version   : α-0.1                                 ##
## (C) 2021 KizahashiLuca.                             ##
## This work is licensed under a CC BY-SA 4.0 license. ##
#########################################################

## Find target
tag @e[type=!#mrl:not_mob,distance=..1.5,sort=nearest,limit=1] add MRL_LockonTarget

## Set target uuid
execute as @e[tag=MRL_LockonTarget,limit=1] store result score @s PlayerUUID0 run data get entity @s UUID[0]
execute as @e[tag=MRL_LockonTarget,limit=1] store result score @s PlayerUUID1 run data get entity @s UUID[1]
execute as @e[tag=MRL_LockonTarget,limit=1] store result score @s PlayerUUID2 run data get entity @s UUID[2]
execute as @e[tag=MRL_LockonTarget,limit=1] store result score @s PlayerUUID3 run data get entity @s UUID[3]

scoreboard players set @s TargetReset 0
scoreboard players set @s TargetChanged 1
scoreboard players operation @s TargetUUID0 = @e[tag=MRL_LockonTarget,limit=1] PlayerUUID0
scoreboard players operation @s TargetUUID1 = @e[tag=MRL_LockonTarget,limit=1] PlayerUUID1
scoreboard players operation @s TargetUUID2 = @e[tag=MRL_LockonTarget,limit=1] PlayerUUID2
scoreboard players operation @s TargetUUID3 = @e[tag=MRL_LockonTarget,limit=1] PlayerUUID3
execute if score @s TargetUUID0 = @s PrvTargetUUID0 if score @s TargetUUID1 = @s PrvTargetUUID1 if score @s TargetUUID2 = @s PrvTargetUUID2 if score @s TargetUUID3 = @s PrvTargetUUID3 run scoreboard players set @s TargetChanged 0
scoreboard players operation @s PrvTargetUUID0 = @s TargetUUID0
scoreboard players operation @s PrvTargetUUID1 = @s TargetUUID1
scoreboard players operation @s PrvTargetUUID2 = @s TargetUUID2
scoreboard players operation @s PrvTargetUUID3 = @s TargetUUID3

## Send message
title @s[scores={TargetChanged=1}] title [""]
title @s[scores={TargetChanged=1}] subtitle ["",{"text":"[目標] ","color":"red","italic":false},{"selector":"@e[tag=MRL_LockonTarget,limit=1]"},{"text":" を捕捉。","color":"red","italic":false}]

## Particle
execute if entity @e[type=minecraft:area_effect_cloud,tag=MRL_DetectLockon] run particle minecraft:dust 1 0 0 3 ~ ~ ~ 0 0 0 0 0 force @s

## Remove a tag
tag @e[tag=MRL_LockonTarget] remove MRL_LockonTarget

## Kill cloud
kill @e[type=minecraft:area_effect_cloud,tag=MRL_DetectLockon]