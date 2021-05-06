#########################################################
## Minecraft Rocket Launcher                           ##
##   MC-Version: JE 1.16.5                             ##
##   Author    : @KizahashiLuca                        ##
##   Date      : 06 May 2021                           ##
##   Version   : β-1.0                                 ##
## (C) 2021 KizahashiLuca.                             ##
## This work is licensed under a CC BY-SA 4.0 license. ##
#########################################################

## Detect firework_rocket
execute store result score @s MRL_PlayerUUID0 run data get entity @s Owner[0]
execute store result score @s MRL_PlayerUUID1 run data get entity @s Owner[1]
execute store result score @s MRL_PlayerUUID2 run data get entity @s Owner[2]
execute store result score @s MRL_PlayerUUID3 run data get entity @s Owner[3]

execute as @e[type=minecraft:firework_rocket,tag=!MRL_IgnitedMisile] if score @p[tag=MRL_ShotMisileLauncher] MRL_PlayerUUID0 = @s MRL_PlayerUUID0 if score @p[tag=MRL_ShotMisileLauncher] MRL_PlayerUUID1 = @s MRL_PlayerUUID1 if score @p[tag=MRL_ShotMisileLauncher] MRL_PlayerUUID2 = @s MRL_PlayerUUID2 if score @p[tag=MRL_ShotMisileLauncher] MRL_PlayerUUID3 = @s MRL_PlayerUUID3 run tag @s add MRL_IgnitingMisile

scoreboard players operation @e[tag=MRL_IgnitingMisile,limit=1] MRL_TargetUUID0 = @p[tag=MRL_ShotMisileLauncher] MRL_TargetUUID0
scoreboard players operation @e[tag=MRL_IgnitingMisile,limit=1] MRL_TargetUUID1 = @p[tag=MRL_ShotMisileLauncher] MRL_TargetUUID1
scoreboard players operation @e[tag=MRL_IgnitingMisile,limit=1] MRL_TargetUUID2 = @p[tag=MRL_ShotMisileLauncher] MRL_TargetUUID2
scoreboard players operation @e[tag=MRL_IgnitingMisile,limit=1] MRL_TargetUUID3 = @p[tag=MRL_ShotMisileLauncher] MRL_TargetUUID3