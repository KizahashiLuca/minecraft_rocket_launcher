#########################################################
## Minecraft Rocket Launcher                           ##
##   MC-Version: JE 1.16.5                             ##
##   Author    : @KizahashiLuca                        ##
##   Date      : 06 May 2021                           ##
##   Version   : β-1.0                                 ##
## (C) 2021 KizahashiLuca.                             ##
## This work is licensed under a CC BY-SA 4.0 license. ##
#########################################################

## Find target
tag @e[type=!#mrl:not_mob,distance=..1.5,sort=nearest,limit=1] add MRL_LockonTarget

## Set target uuid
execute as @e[tag=MRL_LockonTarget,limit=1] store result score @s MRL_PlayerUUID0 run data get entity @s UUID[0]
execute as @e[tag=MRL_LockonTarget,limit=1] store result score @s MRL_PlayerUUID1 run data get entity @s UUID[1]
execute as @e[tag=MRL_LockonTarget,limit=1] store result score @s MRL_PlayerUUID2 run data get entity @s UUID[2]
execute as @e[tag=MRL_LockonTarget,limit=1] store result score @s MRL_PlayerUUID3 run data get entity @s UUID[3]

scoreboard players set @p[tag=MRL_DetectLockon] MRL_TargetChange 1
scoreboard players operation @p[tag=MRL_DetectLockon] MRL_TargetUUID0 = @e[tag=MRL_LockonTarget,limit=1] MRL_PlayerUUID0
scoreboard players operation @p[tag=MRL_DetectLockon] MRL_TargetUUID1 = @e[tag=MRL_LockonTarget,limit=1] MRL_PlayerUUID1
scoreboard players operation @p[tag=MRL_DetectLockon] MRL_TargetUUID2 = @e[tag=MRL_LockonTarget,limit=1] MRL_PlayerUUID2
scoreboard players operation @p[tag=MRL_DetectLockon] MRL_TargetUUID3 = @e[tag=MRL_LockonTarget,limit=1] MRL_PlayerUUID3
execute if score @p[tag=MRL_DetectLockon] MRL_TargetUUID0 = @p[tag=MRL_DetectLockon] MRL_PrvTgtUUID0 if score @p[tag=MRL_DetectLockon] MRL_TargetUUID1 = @p[tag=MRL_DetectLockon] MRL_PrvTgtUUID1 if score @p[tag=MRL_DetectLockon] MRL_TargetUUID2 = @p[tag=MRL_DetectLockon] MRL_PrvTgtUUID2 if score @p[tag=MRL_DetectLockon] MRL_TargetUUID3 = @p[tag=MRL_DetectLockon] MRL_PrvTgtUUID3 run scoreboard players set @p[tag=MRL_DetectLockon] MRL_TargetChange 0
scoreboard players operation @p[tag=MRL_DetectLockon] MRL_PrvTgtUUID0 = @p[tag=MRL_DetectLockon] MRL_TargetUUID0
scoreboard players operation @p[tag=MRL_DetectLockon] MRL_PrvTgtUUID1 = @p[tag=MRL_DetectLockon] MRL_TargetUUID1
scoreboard players operation @p[tag=MRL_DetectLockon] MRL_PrvTgtUUID2 = @p[tag=MRL_DetectLockon] MRL_TargetUUID2
scoreboard players operation @p[tag=MRL_DetectLockon] MRL_PrvTgtUUID3 = @p[tag=MRL_DetectLockon] MRL_TargetUUID3

## Send message
title @p[tag=MRL_DetectLockon,scores={MRL_TargetChange=1}] title [""]
title @p[tag=MRL_DetectLockon,scores={MRL_TargetChange=1}] subtitle ["",{"text":"Track ","color":"red","italic":false},{"selector":"@e[tag=MRL_LockonTarget,limit=1]","color":"red","italic":false}]

## Particle
execute if entity @e[type=minecraft:area_effect_cloud,tag=MRL_DetectLockon] run particle minecraft:dust 1 0 0 3 ~ ~ ~ 0 0 0 0 0 force @p[tag=MRL_DetectLockon]

## Remove a tag
tag @e[tag=MRL_LockonTarget] remove MRL_LockonTarget

## Add a tag
tag @p[tag=MRL_DetectLockon] add MRL_LockonTarget

## Kill cloud
kill @e[type=minecraft:area_effect_cloud,tag=MRL_DetectLockon]