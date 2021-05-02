#########################################################
## Minecraft Rocket Launcher                           ##
##   MC-Version: JE 1.16.5                             ##
##   Author    : @KizahashiLuca                        ##
##   Date      : 02 May 2021                           ##
##   Version   : α-0.1                                 ##
## (C) 2021 KizahashiLuca.                             ##
## This work is licensed under a CC BY-SA 4.0 license. ##
#########################################################

## Add a tag
tag @s add MRL_DetectLockon

## Summon cloud
execute as @s at @s positioned ~ ~1.5 ~ run summon minecraft:area_effect_cloud ^ ^ ^1 {Tags:["MRL_DetectLockon"],NoGravity:1b,Invulnerable:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:2147483647}

data modify entity @e[type=minecraft:area_effect_cloud,tag=MRL_DetectLockon,limit=1] Rotation set from entity @s Rotation

## Detect target
execute as @e[type=minecraft:area_effect_cloud,tag=MRL_DetectLockon,tag=!MRL_NotFoundTarget] at @s run function mrl:system/launcher/misile_launcher/find_target/loop

## Remove a tag
tag @s remove MRL_DetectLockon