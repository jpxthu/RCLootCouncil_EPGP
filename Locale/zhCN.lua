-- Translate RCLootCouncil - EPGP to your language at:
-- http://wow.curseforge.com/addons/rclootcouncil-epgp/localization/

local L = LibStub("AceLocale-3.0"):NewLocale("RCEPGP", "zhCN")
if not L then return end

L["gp_value_help"] = "例:\r\n100#: 使用100#GP值\r\n50#: 使用50#GP值\r\n25: 所有物品价值25GP"
L["enable_custom_gp"] = "启用自定义GP"
L["formula_syntax_error"] = "公式有语法错误. 将使用默认公式."
L["restore_default"] = "恢复默认设置"
L["slot_weights"] = "栏位权重"
L["formula_help"] = "在下面的输入框输入返回GP值的LUA代码.\n如果输入是单行语句, 例如 'a and b or c', 无需return语句.\n如果有任何控制语句, 则需要return语句.\n以下是代码中可用的变量."
L["variable_ilvl_help"] = "整数.物品的装备等级或者是套装代币的基础装等"
L["variable_isToken_help"] = "整数. 1如果物品是套装代币,否则为0."
L["variable_slotWeights_help"] = "数字. 物品的栏位权重."
L["variable_numSocket_help"] = "整数. 物品里插槽的数量."
L["variable_hasAvoid_help"] = "整数. 1如果物品带有闪避,否则为0."
L["variable_hasSpeed_help"] = "整数. 1如果物品带有加速,否则为0."
L["variable_hasLeech_help"] = "整数. 1如果物品带有吸血,否则为0."
L["variable_hasIndes_help"] = "整数. 1如果物品永不磨损,否则为0."
L["variable_rarity_help"] = "整数. 物品的稀有度. 3-稀有,4-史诗,5-传说."
L["variable_itemID_help"] = "整数. 物品的ID."
L["variable_equipLoc_help"] = "字符串. 代表栏位的非本地化字符串. 如果可能,建议使用变量slotWeights代替."
L["gp_formula"] = "GP公式"
L["Input must be a number."] = "输入必须为数字."
L["disable_gp_popup"] = "GP弹窗被RCLootCouncil - EPGP自动禁用."
L["GP Bid"] = "GP出价"
L["Enable Bidding"] = "开启竞标"
L["Custom GP"] = "自定义GP"
L["bidding_desc"] = "玩家可以在RCLootCouncil弹窗中向战利品分配者发送以整数开始的备注以告知竞标出价."
L["Bidding"] = "竞标"
L["Credit GP to %s"] = "给 %s 增加GP"
L["Undo GP"] = "撤销GP"
L["Award GP (Default: %s)"] = "奖励GP （默认： %s)"
L["variable_link_help"] = "字符串. 物品的完整链接."
L["announce_formula_runtime_error"] = "你的GP公式含有运行时错误.出错时会使用默认公式."
L["chat_commands"] = "- epgp     - 打开RCLootCouncil-EPGP配置界面"
L["gpOptions"] = "回应的GP百分比"
L["gpOptionsButton"] = "打开配置回应的GP百分比的选项"
L["variable_isNormal_help"] = "整数. 1如果物品来自普通难度,否则为0."
L["variable_isHeroic_help"] = "整数. 1如果物品来自英雄难度,否则为0."
L["variable_isMythic_help"] = "整数. 1如果物品来自史诗难度,否则为0."
L["variable_isWarforged_help"] = "整数. 1如果物品战火,否则为0."
L["variable_isTitanforged_help"] = "整数. 1如果物品泰坦造物,否则为0."
L["announce_awards_desc2"] = "\nRCLootCouncil-EPGP: #diffgp 指代玩家从物品获取的GP量. #ep 指代玩家的EP值. #gp 指代玩家获取物品前的GP值. #pr 指代玩家获取物品前的PR值. #newgp 指代玩家获取物品后的GP值. #newpr 指代玩家获取物品后的PR值."