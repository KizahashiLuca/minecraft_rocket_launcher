#########################################################
## Minecraft Rocket Launcher                           ##
##   MC-Version: JE 1.16.5                             ##
##   Author    : @KizahashiLuca                        ##
##   Date      : 02 May 2021                           ##
##   Version   : α-0.1                                 ##
## (C) 2021 KizahashiLuca.                             ##
## This work is licensed under a CC BY-SA 4.0 license. ##
#########################################################

## Set UUID
execute as @a[tag=!MRL_SetUUID] run function mrl:system/load/set_uuid

## Launcher
execute as @a[predicate=mrl:after_shot/in_inventory] at @s run function mrl:system/launcher/main
#### Rocket Launcher
execute as @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitedRocket] at @s run function mrl:system/launcher/rocket_launcher/main
#### Misile Launcher
execute as @a[predicate=mrl:before_shot/misile_launcher/in_inventory] at @s run function mrl:system/launcher/misile_launcher/find_target/main
execute as @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitedMisile] at @s run function mrl:system/launcher/misile_launcher/main

## Summon Arms Trader
scoreboard players set @a[scores={MRL_PlayMinute=24000..}] MRL_PlayMinute 0
execute as @a at @s if predicate mrl:summon_trader/condition run function mrl:system/summon/arms_trader