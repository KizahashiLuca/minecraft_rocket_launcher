#########################################################
## Minecraft Rocket Launcher                           ##
##   MC-Version: JE 1.16.5                             ##
##   Author    : @KizahashiLuca                        ##
##   Date      : 02 May 2021                           ##
##   Version   : α-0.1                                 ##
## (C) 2021 KizahashiLuca.                             ##
## This work is licensed under a CC BY-SA 4.0 license. ##
#########################################################

## Distance limit
execute unless block ~ ~ ~ #mrl:air run particle minecraft:dust 0.071 0.808 0.071 3 ~ ~ ~ 0 0 0 0 0 force @p[tag=MRL_DetectLockon]
execute unless block ~ ~ ~ #mrl:air run kill @e[type=minecraft:area_effect_cloud,tag=MRL_DetectLockon]

## Distance limit
execute unless entity @p[tag=MRL_DetectLockon,distance=..50] run particle minecraft:dust 0.071 0.808 0.071 3 ~ ~ ~ 0 0 0 0 0 force @p[tag=MRL_DetectLockon]
execute unless entity @p[tag=MRL_DetectLockon,distance=..50] run kill @e[type=minecraft:area_effect_cloud,tag=MRL_DetectLockon]

## Find target
execute if entity @p[tag=MRL_DetectLockon,distance=3..] if entity @e[type=!#mrl:not_mob,distance=..1.5,sort=nearest] run function mrl:system/launcher/misile_launcher/find_target/found
title @a[tag=MRL_LockonTarget] actionbar ["",{"text":"lockon"}]

## Add a tag
tag @s add MRL_NotFoundTarget

## Summon next cloud
execute if entity @e[type=minecraft:area_effect_cloud,tag=MRL_DetectLockon] if entity @p[tag=MRL_DetectLockon,distance=..50] run summon minecraft:area_effect_cloud ^ ^ ^1 {Tags:["MRL_DetectLockon"],NoGravity:1b,Invulnerable:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:2147483647}

execute if entity @e[type=minecraft:area_effect_cloud,tag=MRL_DetectLockon] run data modify entity @e[type=minecraft:area_effect_cloud,tag=MRL_DetectLockon,tag=!MRL_NotFoundTarget,limit=1] Rotation set from entity @s Rotation

## Loop
execute as @e[type=minecraft:area_effect_cloud,tag=MRL_DetectLockon,tag=!MRL_NotFoundTarget] at @s run function mrl:system/launcher/misile_launcher/find_target/loop