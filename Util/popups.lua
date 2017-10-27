--- Contains all LibDialog popups used by RCLootCouncil-EPGP
-- @author: Safetee
-- 10/27/2017
local addon = LibStub("AceAddon-3.0"):GetAddon("RCLootCouncil")
local RCEPGP = addon:GetModule("RCLootCouncil-EPGP")
local EPGP = LibStub("AceAddon-3.0"):GetAddon("EPGP")
local GS = LibStub("LibGuildStorage-1.2")
local L = LibStub("AceLocale-3.0"):GetLocale("RCLootCouncil")
local LEP = LibStub("AceLocale-3.0"):GetLocale("RCEPGP")
local GP = LibStub("LibGearPoints-1.2")
local LibDialog = LibStub("LibDialog-1.0")
local RCLootCouncilML = addon:GetModule("RCLootCouncilML")

-- Dialog input is the same as RCLOOTCOUNCIL_CONFIRM_AWARD, plus "gp" and "resonseGP".
LibDialog:Register("RCEPGP_CONFIRM_AWARD", {
    text = "something_went_wrong",
    icon = "",
    on_show = function(self, data)
        RCLootCouncilML.AwardPopupOnShow(self, data)
        if data.gp then
            local text = self.text:GetText().." "..RCEPGP:GetGPAndResponseGPText(data.gp, data.responseGP)
            self.text:SetText(text)
        end
    end,
    buttons = {
        { text = _G.YES,
            on_click = function(self, data)
                currentAwardingGP = data and data.gp or 0
                RCLootCouncilML.AwardPopupOnClickYes(self, data) -- GP Award is handled in RCEPGP:OnMessageReceived()
                currentAwardingGP = 0
            end,
        },
        { text = _G.NO,
            on_click = function(self, data)
                RCLootCouncilML.AwardPopupOnClickNo(self, data)
            end,
        },
    },
    hide_on_escape = true,
    show_while_dead = true,
})


-- Mostly copy from EPGP/popup.lua
LibDialog:Register("RCEPGP_AWARD_GP", {
    text = "Unknown Item",
    icon = [[Interface\DialogFrame\UI-Dialog-Icon-AlertNew]],
  buttons = {
    {
      text = _G.ACCEPT,
      on_click = function(self, data, reason)
        local gp = tonumber(self.editboxes[1]:GetText())
        EPGP:IncGPBy(data.name, data.item, gp)
        RCEPGP:Debug("Award GP In History table", data.name, data.item, gp)
      end,
    },
    {
      text = _G.CANCEL,
    },
  },
  editboxes = {
    {
      auto_focus = true,
    },
  },
  on_show = function(self, data)
    local color = addon:GetClassColor(data.class)
    local colorCode = "|cff"..addon:RGBToHex(color.r, color.g, color.b)
    self.text:SetFormattedText("%s%s|r\n"..LEP["Credit GP to %s"].."\n", colorCode, data.name, data.item)
    local _, _, _, _, _, _, _, _, _, icon = GetItemInfo(data.item)
    self.icon:SetTexture(icon)
    local gp = data.gp
    self.editboxes[1]:SetText(gp)
    self.editboxes[1]:HighlightText()
    if not self.icon_frame then
      local icon_frame = CreateFrame("Frame", nil, self)
      icon_frame:ClearAllPoints()
      icon_frame:SetAllPoints(self.icon)
      icon_frame:SetScript("OnEnter", function(self)
        GameTooltip:SetOwner(self, "ANCHOR_BOTTOMLEFT", - 3, icon_frame:GetHeight() + 6)
        GameTooltip:SetHyperlink(self:GetParent().data.item)
      end)
      icon_frame:SetScript("OnLeave", function(self)
        GameTooltip:FadeOut()
      end)
      self.icon_frame = icon_frame
    end
    if self.icon_frame then
      self.icon_frame:EnableMouse(true)
      self.icon_frame:Show()
    end
  end,
  on_hide = function(self, data)
    if ChatEdit_GetActiveWindow() then
      ChatEdit_FocusActiveWindow()
    end
    if self.icon_frame then
      self.icon_frame:EnableMouse(false)
      self.icon_frame:Hide()
    end
  end,
  on_update = function(self, elapsed)
    local gp = tonumber(self.editboxes[1]:GetText())
    if EPGP:CanIncGPBy(self.data.item, gp) then
      self.buttons[1]:Enable()
    else
      self.buttons[1]:Disable()
    end
  end,
  hide_on_escape = true,
  show_while_dead = true,
})