#########################################################
## Minecraft Rocket Launcher                           ##
##   MC-Version: JE 1.16.5                             ##
##   Author    : @KizahashiLuca                        ##
##   Date      : 06 May 2021                           ##
##   Version   : β-1.0                                 ##
## (C) 2021 KizahashiLuca.                             ##
## This work is licensed under a CC BY-SA 4.0 license. ##
#########################################################

## Add a tag
tag @p[tag=MRL_LockonTarget,predicate=!mrl:before_shot/misile_launcher/in_hand] add MRL_ResetTarget

## Set scoreboard
scoreboard players set @p[tag=MRL_ResetTarget] MRL_TargetUUID0 1
scoreboard players set @p[tag=MRL_ResetTarget] MRL_TargetUUID1 1
scoreboard players set @p[tag=MRL_ResetTarget] MRL_TargetUUID2 1
scoreboard players set @p[tag=MRL_ResetTarget] MRL_TargetUUID3 1
scoreboard players set @p[tag=MRL_ResetTarget] MRL_PrvTgtUUID0 0
scoreboard players set @p[tag=MRL_ResetTarget] MRL_PrvTgtUUID1 0
scoreboard players set @p[tag=MRL_ResetTarget] MRL_PrvTgtUUID2 0
scoreboard players set @p[tag=MRL_ResetTarget] MRL_PrvTgtUUID3 0

## Remove tags
tag @a remove MRL_LockonTarget
tag @a remove MRL_ResetTarget

## Reset Target Loop
execute if entity @p[tag=MRL_LockonTarget,predicate=!mrl:before_shot/misile_launcher/in_hand] run function mrl:system/launcher/misile_launcher/find_target/reset_target