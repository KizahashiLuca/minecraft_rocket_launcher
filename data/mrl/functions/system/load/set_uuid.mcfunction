#########################################################
## Minecraft Rocket Launcher                           ##
##   MC-Version: JE 1.16.5                             ##
##   Author    : @KizahashiLuca                        ##
##   Date      : 02 May 2021                           ##
##   Version   : α-0.1                                 ##
## (C) 2021 KizahashiLuca.                             ##
## This work is licensed under a CC BY-SA 4.0 license. ##
#########################################################

## Set scoreboards
execute store result score @s MRL_PlayerUUID0 run data get entity @s UUID[0]
execute store result score @s MRL_PlayerUUID1 run data get entity @s UUID[1]
execute store result score @s MRL_PlayerUUID2 run data get entity @s UUID[2]
execute store result score @s MRL_PlayerUUID3 run data get entity @s UUID[3]

## Set tags
tag @s add MRL_SetUUID