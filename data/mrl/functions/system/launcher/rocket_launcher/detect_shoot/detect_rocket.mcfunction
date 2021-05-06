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

execute if score @p[tag=MRL_ShotRocketLauncher] MRL_PlayerUUID0 = @s MRL_PlayerUUID0 if score @p[tag=MRL_ShotRocketLauncher] MRL_PlayerUUID1 = @s MRL_PlayerUUID1 if score @p[tag=MRL_ShotRocketLauncher] MRL_PlayerUUID2 = @s MRL_PlayerUUID2 if score @p[tag=MRL_ShotRocketLauncher] MRL_PlayerUUID3 = @s MRL_PlayerUUID3 run tag @s add MRL_IgnitingRocket