-- Translate RCLootCouncil - EPGP to your language at:
-- http://wow.curseforge.com/addons/rclootcouncil-epgp/localization/

-- Default english translation
local L = LibStub("AceLocale-3.0"):NewLocale("RCEPGP", "enUS", true)
if not L then return end

L["gp_value_help"] = "Example:\r\n100#: use 100# of normal GP value\r\n50#: use 50# of normal GP value \r\n25: all items are worth 25 GP"
L["enable_custom_gp"] = "Enable Custom GearPoints"
L["formula_syntax_error"] = "Formula has syntax error. Default formula will be used instead."
L["restore_default"] = "Restore to Default"
L["slot_weights"] = "Slot Weights"
L["formula_help"] = "Enter lua code that returns GP value in the editbox below.\nIf your input is a regular statement to be evaluated, e.g. 'a and b or c', you don't need a return statement.\nIf you have any control blocks (e.g. if/then), you'll need return statements.\nThe following are the variables usable in the code."
L["variable_ilvl_help"] = "Integer. The item level of the item or the base ilvl of the token."
L["variable_isToken_help"] = "Integer. 1 if the item is a set token, 0 otherwise."
L["variable_slotWeights_help"] = "Number. The weights of the item according to its equipment slot."
L["variable_numSocket_help"] = "Integer. The number of socket in the item."
L["variable_hasAvoid_help"] = "Integer. 1 if the item has avoidance, 0 otherwise."
L["variable_hasSpeed_help"] = "Integer. 1 if the item has speed, 0 otherwise."
L["variable_hasLeech_help"] = "Integer. 1 if the item has leech, 0 otherwise."
L["variable_hasIndes_help"] = "Integer. 1 if the item is indestructible, 0 otherwise."
L["variable_rarity_help"] = "Integer. The rarity of the item. 3-Rare, 4-Epic, 5-Legendary"
L["variable_itemID_help"] = "Integer. The item id of the item."
L["variable_equipLoc_help"] = "String. The non-localized string representing the equipment slot. Recommend to use variable \"slotWeights\" instead if possible"
L["gp_formula"] = "GP Formula"
L["Input must be a number."] = true
L["disable_gp_popup"] = "GP popup is automatically disabled by RCLootCouncil - EPGP."
L["GP Bid"] = true
L["Enable Bidding"] = true
L["Custom GP"] = true
L["bidding_desc"] = "Player can send bid price to the loot master by sending a note that starts with integer in the RCLootCouncil popup."
L["Bidding"] = true
L["Credit GP to %s"] = true
L["Undo GP"] = true
L["Award GP (Default: %s)"] = true
L["variable_link_help"] = "String. The full item link of the item"
L["announce_formula_runtime_error"] = "Your GP formula has runtime error. Default formula is used when error occurs."
L["chat_commands"] = "- epgp     - Open the RCLootCouncil-EPGP options interface"
L["gpOptions"] = "GP Percentage of Responses"
L["gpOptionsButton"] = "Open options to set GP percentage of responses"
L["variable_isNormal_help"] = "Integer. 1 if the item is from normal difficulty, 0 otherwise."
L["variable_isHeroic_help"] = "Integer. 1 if the item is from heroic difficulty, 0 otherwise."
L["variable_isMythic_help"] = "Integer. 1 if the item is from mythic difficulty, 0 otherwise."
L["variable_isWarforged_help"] = "Integer. 1 if the item is warforged, 0 otherwise."
L["variable_isTitanforged_help"] = "Integer. 1 if the item is titanforged, 0 otherwise."
L["announce_awards_desc2"] = "\nRCLootCouncil-EPGP: #diffgp# for the amount of GP the player gains from the item. #ep# for the EP of player. #gp# for the GP of player before getting the item. #pr# for the PR of player before getting the item. #newgp# for the GP of player after getting the item. #newpr# for the PR of player after getting the item."
L["variable_isOnline_help"] = "Integer. 1 if that character is online. 0 otherwise."
L["variable_guildName_help"] = "String. The name of that character's guild."
L["variable_zone_help"] = "String. The zone name of that character."
L["variable_zoneId_help"] = "Integer. The zone Id of that character."
L["variable_isInRaid_help"] = "Integer. 1 if that character is in the raid. 0 otherwise."
L["variable_isStandby_help"] = "Integer. 1 if that character is in the standby list of EPGP(dkp reloaded). 0 otherwise."
L["variable_isMain_help"] = "Integer. 1 if that character is main character, defined by the officer's note. 0 otherwise."
L["variable_isMaxLevel_help"] = "Integer. 1 if that character is max level. 0 otherwise."
L["variable_rank_help"] = "Integer. The guild rank number of that character. 0 for the guild master. 1 for the next guild rank. Then 2,3,4,5,6,..."
L["variable_isTank_help"] = "Integer. 1 if the role of that character is tank. 0 otherwise."
L["variable_isHealer_help"] = "Integer. 1 if the role of that character is healer. 0 otherwise."
L["variable_isDPS_help"] = "Integer. 1 if the role of that character is damager. 0 otherwise."
L["variable_isMeleeDPS_help"] = "Integer. 1 if that character is a melee DPS. Require you are nearby to that character. 0 otherwise."
L["variable_isRangedDPS_help"] = "Integer. 1 if that character is a ranged DPS. Require you are nearby to that character. 0 otherwise."
L["variable_level_help"] = "Integer. The level of that character."
L["variable_class_help"] = "String. Non-localized class name of that character. For example: 'DRUID', 'DEATHKNIGHT', 'DEMONHUNTER'"
L["variable_ep_help"] = "Integer. The EP(Effort Point) of that character."
L["variable_gp_help"] = "Integer. The GP(Gear Point) of that character."
L["variable_pr_help"] = "Number. The PR(Priority) of that character."
L["variable_isInputName_help"] = "Integer. 1 if the name of that character is input name. The input name is  from '/rc massep [reason] [amount] [formulaIndexOrName] [input name]'"
L["variable_isRankX_help"] = "Integer. 1 if that character is in that guild rank. 0 for guild master. 1 for the next guild rank. Then 2,3,4,..."
L["variable_main_prefix_help"] = "The above variables can be prefixed by 'main' to form new variables that checks for the main character's value instead. For example, 'mainisRank1' returns 1 if the main's rank is rank1. "
L["variable_same_prefix_help"] = "Integer. The above variables can be prefixed by 'same' to check if the value is the same as you. 1 if it is same. 0 otherwise."
L["variable_inputname_prefix_help"] = "The above variables can be prefixed by 'inputname' to check the value of input name.  The input name is  from '/rc massep [reason] [amount] [formulaIndexOrName] [input name]'"
L["variable_minep_help"] = "Integer. The min EP of EPGP(dkp reloaded)."
L["variable_decay_help"] = "Number. The decay of EPGP(dkp reloaded)."
L["variable_baseGP_help"] = "Integer. The base GP of EPGP(dkp reloaded)."
L["variable_inputEPAmount_help"] = "Integer. The input ep amount from '/rc massep [reason][input ep amount][formulaIndexOrName][input name]' or '/rc recurep [interval Minute][reason][input ep amount][formulaIndexOrName][input name]'"
L["variable_count_help"] = "Function whose argument is a string formula that returns the count of guild or raid characters whose formula value is non-zero. For example, count('isOnline') returns the number of characters that are online, count('isMaxLevel*isOnline') returns the number of max level characters that are online."
L["Custom EP Variables"] = true
L["customEP_desc"] = "The following formula is used for custom EP. The addon calculates the formula value for all characters in the guild or raid and assign that that value to the character's EP. (No EP operation if the value is 0). There is some variables to help you write the formulas and you can get their information from 'Custom EP Variables' Tab.You can mass assign EP by these commands:\n/rc massep [reason][input ep amount][formula index or name][input name]: Award EP to all raid and guild members by the amount calculated by the formula.\n/rc recurep [interval minutes][reason][input ep amount][formula index or name][input name]: Mass EP Award by formula every interval minute.\nFor example, if formula 1 is 'inputEPAmount*isOnline' then '/rc massep onlineAward 1000 1' will award 1000 EP to all guild or raid members online.\nNote that only one characters under the same account, defined by the officer's note, will be awarded EP. For example, for the above operation, if both a player's main and alt are online, the player will only be awarded 1000EP, instead of 2000EP."
L["customEPVariable_desc"] = "These variables are used for custom EP. Check the 'Custom EP' Tab for extra information."
L["variable_calendarSignedUp_help"] = "Function whose argument is no argument or a string. Returns 1 if the character signups up in one of today's calendar event (whose title contains the argument, if argument exists). Return 0 otherwise. For example, 'calendarSignedUp()' returns 1 if the character has signed up in one of today's calendar event."
L["new_version_detected"] = "Your version %s is outdated. Newer Version %s detected. You can update the addon from Curse.com or Twitch App."
