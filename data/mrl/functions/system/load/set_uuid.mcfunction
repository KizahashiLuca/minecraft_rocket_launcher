#########################################################
## Minecraft Rocket Launcher                           ##
##   MC-Version: JE 1.16.5                             ##
##   Author    : @KizahashiLuca                        ##
##   Date      : 02 May 2021                           ##
##   Version   : α-0.1                                 ##
## (C) 2021 KizahashiLuca.                             ##
## This work is licensed under a CC BY-SA 4.0 license. ##
#########################################################

## Add tags
tag @p[tag=!MRL_SetUUID] add MRL_SettingUUID
tag @p[tag=MRL_SettingUUID] add MRL_SetUUID

## Set scoreboards
execute store result score @p[tag=MRL_SettingUUID] MRL_PlayerUUID0 run data get entity @p[tag=MRL_SettingUUID] UUID[0]
execute store result score @p[tag=MRL_SettingUUID] MRL_PlayerUUID1 run data get entity @p[tag=MRL_SettingUUID] UUID[1]
execute store result score @p[tag=MRL_SettingUUID] MRL_PlayerUUID2 run data get entity @p[tag=MRL_SettingUUID] UUID[2]
execute store result score @p[tag=MRL_SettingUUID] MRL_PlayerUUID3 run data get entity @p[tag=MRL_SettingUUID] UUID[3]

## Remove a tag
tag @a remove MRL_SettingUUID

## Set UUID Loop
execute if entity @p[tag=!MRL_SetUUID] run function mrl:system/load/set_uuid