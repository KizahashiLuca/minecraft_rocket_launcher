#########################################################
## Minecraft Rocket Launcher                           ##
##   MC-Version: JE 1.16.5                             ##
##   Author    : @KizahashiLuca                        ##
##   Date      : 02 May 2021                           ##
##   Version   : α-0.1                                 ##
## (C) 2021 KizahashiLuca.                             ##
## This work is licensed under a CC BY-SA 4.0 license. ##
#########################################################

## Remove tags - players
tag @a remove MRL_SetUUID
tag @a remove MRL_SettingUUID

## Remove tags - launcher
tag @a remove MRL_ShotLauncher

## Remove tags - misile launcher - players
tag @a remove MRL_ShotMisileLauncher
tag @a remove MRL_ReadyMisileLauncher
tag @a remove MRL_ReadiedMisileLauncher
tag @a remove MRL_FoundTarget
tag @a remove MRL_LockonTarget
tag @a remove MRL_ResetTarget
tag @a remove MRL_DetectPlayer
tag @a remove MRL_DetectedPlayer
## Remove tags - misile launcher - mobs
tag @e remove MRL_MisileTarget
tag @e remove MRL_LockonTarget
## Remove tags - misile launcher - firework rockets
tag @e remove MRL_IgnitingMisile
tag @e remove MRL_IgnitedMisile
tag @e remove MRL_Misile
## Remove tags - misile launcher - area effect clouds
tag @e remove MRL_DetectLockon
tag @e remove MRL_NotFoundTarget
tag @e remove MRL_IgnitingMisile
tag @e remove MRL_IgnitedMisile
tag @e remove MRL_MisileCloud

## Remove tags - misile launcher - players
tag @a remove MRL_ShotRocketLauncher
## Remove tags - misile launcher - firework rockets
tag @e remove MRL_IgnitingRocket
tag @e remove MRL_IgnitedRocket
tag @e remove MRL_DetectRocketExplode
## Remove tags - misile launcher - area effect clouds
tag @e remove MRL_DetectRocket
tag @e remove MRL_IgnitingRocket
tag @e remove MRL_IgnitedRocket

## Remove tags - summoning trader
tag @e remove MRL_SummonTraderArea
tag @e remove MRL_NotSetTarget
tag @e remove MRL_ArmsTrader
tag @e remove MRL_NotSetTarget