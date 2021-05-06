#########################################################
## Minecraft Rocket Launcher                           ##
##   MC-Version: JE 1.16.5                             ##
##   Author    : @KizahashiLuca                        ##
##   Date      : 06 May 2021                           ##
##   Version   : β-1.0                                 ##
## (C) 2021 KizahashiLuca.                             ##
## This work is licensed under a CC BY-SA 4.0 license. ##
#########################################################

## Add scoreboards
scoreboard objectives add MRL_OnLoad dummy
## Add scoreboards for position
scoreboard objectives add MRL_PosX dummy
scoreboard objectives add MRL_PosY dummy
scoreboard objectives add MRL_PosZ dummy
## Add scoreboards for calculation
scoreboard objectives add MRL_1000 dummy
## Add scoreboards for launcher common
scoreboard objectives add MRL_PlayerUUID0 dummy
scoreboard objectives add MRL_PlayerUUID1 dummy
scoreboard objectives add MRL_PlayerUUID2 dummy
scoreboard objectives add MRL_PlayerUUID3 dummy
scoreboard objectives add MRL_NotExplosive dummy
## Add scoreboards for rocket launcher
scoreboard objectives add MRL_RocketUUID0 dummy
scoreboard objectives add MRL_RocketUUID1 dummy
scoreboard objectives add MRL_RocketUUID2 dummy
scoreboard objectives add MRL_RocketUUID3 dummy
## Add scoreboards for misile launcher
scoreboard objectives add MRL_MisileUUID0 dummy
scoreboard objectives add MRL_MisileUUID1 dummy
scoreboard objectives add MRL_MisileUUID2 dummy
scoreboard objectives add MRL_MisileUUID3 dummy
scoreboard objectives add MRL_TargetUUID0 dummy
scoreboard objectives add MRL_TargetUUID1 dummy
scoreboard objectives add MRL_TargetUUID2 dummy
scoreboard objectives add MRL_TargetUUID3 dummy
scoreboard objectives add MRL_PrvTgtUUID0 dummy
scoreboard objectives add MRL_PrvTgtUUID1 dummy
scoreboard objectives add MRL_PrvTgtUUID2 dummy
scoreboard objectives add MRL_PrvTgtUUID3 dummy
scoreboard objectives add MRL_TargetChange dummy
scoreboard objectives add MRL_DiffX dummy
scoreboard objectives add MRL_DiffY dummy
scoreboard objectives add MRL_DiffZ dummy
scoreboard objectives add MRL_PowDiffX dummy
scoreboard objectives add MRL_PowDiffY dummy
scoreboard objectives add MRL_PowDiffZ dummy
scoreboard objectives add MRL_NormXYZ dummy
scoreboard objectives add MRL_SqrtXYZ dummy
scoreboard objectives add MRL_SqrtVarI dummy
scoreboard objectives add MRL_SqrtVarX dummy
## Add scoreboards for summoning trader
scoreboard objectives add MRL_PlayMinute minecraft.custom:minecraft.play_one_minute

## Set scoreboards
scoreboard players set #mrl MRL_OnLoad 1
## Set scoreboards for calculation
scoreboard players set #mrl MRL_1000 1000