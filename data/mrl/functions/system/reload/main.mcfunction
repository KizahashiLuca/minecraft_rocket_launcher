#########################################################
## Minecraft Rocket Launcher                           ##
##   MC-Version: JE 1.16.5                             ##
##   Author    : @KizahashiLuca                        ##
##   Date      : 02 May 2021                           ##
##   Version   : α-0.1                                 ##
## (C) 2021 KizahashiLuca.                             ##
## This work is licensed under a CC BY-SA 4.0 license. ##
#########################################################

## Change gamerules
gamerule maxCommandChainLength 65536

## Send Title Message
function mrl:system/reload/message

## Remove scoreboards
function mrl:system/unload/remove_scoreboard
## Remove entities
function mrl:system/unload/remove_entities
## Remove tags
function mrl:system/unload/remove_tags

## Set scoreboards
function mrl:system/load/set_scoreboard