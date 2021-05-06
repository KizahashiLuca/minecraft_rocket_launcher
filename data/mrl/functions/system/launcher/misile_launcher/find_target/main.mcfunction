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
tag @p[predicate=mrl:before_shot/misile_launcher/in_hand] add MRL_ReadyMisileLauncher
tag @p[predicate=mrl:before_shot/misile_launcher/in_hand] add MRL_ReadiedMisileLauncher

## Set target
execute if entity @p[tag=!MRL_LockonTarget,tag=MRL_ReadyMisileLauncher,predicate=mrl:before_shot/misile_launcher/mainhand,predicate=mrl:before_shot/misile_launcher/sneak] run function mrl:system/launcher/misile_launcher/find_target/set_target
execute if entity @p[tag=!MRL_LockonTarget,tag=MRL_ReadyMisileLauncher,predicate=mrl:before_shot/misile_launcher/offhand,predicate=mrl:before_shot/misile_launcher/sneak] run function mrl:system/launcher/misile_launcher/find_target/set_target

## Remove a tag
tag @a remove MRL_ReadyMisileLauncher

## Find target Loop
execute if entity @p[tag=!MRL_ReadiedMisileLauncher,predicate=mrl:before_shot/misile_launcher/in_hand] run function mrl:system/launcher/misile_launcher/find_target/main

## Remove a tag
tag @a remove MRL_ReadiedMisileLauncher