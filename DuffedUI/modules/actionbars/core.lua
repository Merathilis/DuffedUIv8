local D, C, L = select(2, ...):unpack()

--[[
	TODO: keybinds, disable blizzard, Bar 1 to 5, pet, shift, buttons, skinning, range, others, cooldown, extra
--]]

local DuffedUIActionBars = CreateFrame("Frame")
local _G = _G
local format = format
local Noop = function() end
local NUM_ACTIONBAR_BUTTONS = NUM_ACTIONBAR_BUTTONS
local NUM_PET_ACTION_SLOTS = NUM_PET_ACTION_SLOTS
local NUM_STANCE_SLOTS = NUM_STANCE_SLOTS
local MainMenuBar, MainMenuBarArtFrame = MainMenuBar, MainMenuBarArtFrame
local OverrideActionBar = OverrideActionBar
local PossessBarFrame = PossessBarFrame
local PetActionBarFrame = PetActionBarFrame
local ShapeshiftBarLeft, ShapeshiftBarMiddle, ShapeshiftBarRight = ShapeshiftBarLeft, ShapeshiftBarMiddle, ShapeshiftBarRight
local Size = C.ActionBars.NormalButtonSize
local PetSize = C.ActionBars.PetButtonSize
local Spacing = C.ActionBars.ButtonSpacing
local Panels = T["Panels"]
local Hider = Panels.Hider
local Frames = {
	MainMenuBar, MainMenuBarArtFrame, OverrideActionBar,
	PossessBarFrame, PetActionBarFrame, IconIntroTracker,
	ShapeshiftBarLeft, ShapeshiftBarMiddle, ShapeshiftBarRight,
}

function DuffedUIActionBars:DisableBlizzard()
	SetCVar("alwaysShowActionBars", 1)

	for _, frame in pairs(Frames) do
		frame:UnregisterAllEvents()
		frame.ignoreFramePositionManager = true
		frame:SetParent(Hider)
	end
	
	for i = 1, 6 do
		local Button = _G["OverrideActionBarButton"..i]
		
		Button:UnregisterAllEvents()
		Button:SetAttribute("statehidden", true)
	end
	
	hooksecurefunc("TalentFrame_LoadUI", function()
		PlayerTalentFrame:UnregisterEvent("ACTIVE_TALENT_GROUP_CHANGED")
	end)

	hooksecurefunc("ActionButton_OnEvent", function(self, event)
		if (event == "PLAYER_ENTERING_WORLD") then
			self:UnregisterEvent("ACTIONBAR_SHOWGRID")
			self:UnregisterEvent("ACTIONBAR_HIDEGRID")
			self:UnregisterEvent("PLAYER_ENTERING_WORLD")
		end
	end)
	
	MainMenuBar.slideOut.IsPlaying = function()
		return true
	end
end

function DuffedUIActionBars:ShowGrid()
	for i = 1, NUM_ACTIONBAR_BUTTONS do
		local Button

		Button = _G[format("ActionButton%d", i)]
		Button:SetAttribute("showgrid", 1)
		Button:SetAttribute("statehidden", true)
		Button:Show()
		ActionButton_ShowGrid(Button)
		
		Button = _G[format("MultiBarRightButton%d", i)]
		Button:SetAttribute("showgrid", 1)
		Button:SetAttribute("statehidden", true)
		Button:Show()
		ActionButton_ShowGrid(Button)

		Button = _G[format("MultiBarBottomRightButton%d", i)]
		Button:SetAttribute("showgrid", 1)
		Button:SetAttribute("statehidden", true)
		Button:Show()
		ActionButton_ShowGrid(Button)
		
		Button = _G[format("MultiBarLeftButton%d", i)]
		Button:SetAttribute("showgrid", 1)
		Button:SetAttribute("statehidden", true)
		Button:Show()
		ActionButton_ShowGrid(Button)
		
		Button = _G[format("MultiBarBottomLeftButton%d", i)]
		Button:SetAttribute("showgrid", 1)
		Button:SetAttribute("statehidden", true)
		Button:Show()
		ActionButton_ShowGrid(Button)
	end
end

function DuffedUIActionBars:AddPanels()
	local A1 = CreateFrame("Frame", nil, UIParent, "SecureHandlerStateTemplate")
	A1:SetWidth((Size * 12) + (Spacing * 13))
	A1:SetHeight((Size * 1) + (Spacing * 2))
	A1:SetPoint("BOTTOM", UIParent, "BOTTOM", 0, 14)
	A1:SetFrameStrata("BACKGROUND")
	A1:SetFrameLevel(1)

	local A2 = CreateFrame("Frame", nil, UIParent, "SecureHandlerStateTemplate")
	A2:Point("BOTTOMRIGHT", A1, "BOTTOMLEFT", -6, 0)
	A2:SetWidth((Size * 6) + (Spacing * 7))
	A2:SetHeight((Size * 2) + (Spacing * 3))
	A2:SetFrameStrata("BACKGROUND")
	A2:SetFrameLevel(3)

	local A3 = CreateFrame("Frame", nil, UIParent, "SecureHandlerStateTemplate")
	A3:Point("BOTTOMLEFT", A1, "BOTTOMRIGHT", 6, 0)
	A3:SetWidth((Size * 6) + (Spacing * 7))
	A3:SetHeight((Size * 2) + (Spacing * 3))
	A3:SetFrameStrata("BACKGROUND")
	A3:SetFrameLevel(3)
	
	local A4 = CreateFrame("Frame", nil, UIParent, "SecureHandlerStateTemplate")
	A4:Point("BOTTOM", UIParent, "BOTTOM", 0, 14)
	A4:SetWidth((Size * 12) + (Spacing * 13))
	A4:SetHeight((Size * 2) + (Spacing * 3))
	A4:SetFrameStrata("BACKGROUND")
	A4:SetFrameLevel(2)
	
	local A5 = CreateFrame("Frame", nil, UIParent, "SecureHandlerStateTemplate")
	A5:SetPoint("RIGHT", UIParent, "RIGHT", -28, -14)
	A5:SetHeight((Size * 12) + (Spacing * 13))
	A5:SetWidth((Size * 1) + (Spacing * 2))
	A5:SetFrameStrata("BACKGROUND")
	A5:SetFrameLevel(2)
	
	local A6 = CreateFrame("Frame", nil, UIParent, "SecureHandlerStateTemplate")
	A6:SetSize(PetSize + (Spacing * 2), (PetSize * 10) + (Spacing * 11))
	A6:SetPoint("RIGHT", A5, "LEFT", -6, 0)
	
	local A7 = CreateFrame("Frame", nil, UIParent, "SecureHandlerStateTemplate")
	A7:SetSize((PetSize * 10) + (Spacing * 11), PetSize + (Spacing * 2))
	A7:SetPoint("TOPLEFT", 30, -30)
	A7:SetFrameStrata("BACKGROUND")
	A7:SetFrameLevel(2)
	--A7:SetFrameStrata("MEDIUM")
	--A7:SetMovable(true)
	--A7:SetClampedToScreen(true)
	
	if (not C.ActionBars.HideBackdrop) then
		A1:SetTemplate()
		A2:SetTemplate()
		A3:SetTemplate()
		A4:SetTemplate()
		A5:SetTemplate()
		A6:SetTemplate()
		A7:SetTemplate()
	end
	
	Panels.ActionBar1 = A1
	Panels.ActionBar2 = A2
	Panels.ActionBar3 = A3
	Panels.ActionBar4 = A4
	Panels.ActionBar5 = A5
	Panels.PetActionBar = A6
	Panels.StanceBar = A7
end

function DuffedUIActionBars:UpdatePetBar(...)
	for i = 1, NUM_PET_ACTION_SLOTS, 1 do
		local ButtonName = "PetActionButton" .. i
		local PetActionButton = _G[ButtonName]
		local PetActionIcon = _G[ButtonName.."Icon"]
		local PetAutoCastableTexture = _G[ButtonName.."AutoCastable"]
		local PetAutoCastShine = _G[ButtonName.."Shine"]
		local Name, SubText, Texture, IsToken, IsActive, AutoCastAllowed, AutoCastEnabled = GetPetActionInfo(i)
		
		if (not IsToken) then
			PetActionIcon:SetTexture(Texture)
			PetActionButton.tooltipName = Name
		else
			PetActionIcon:SetTexture(_G[Texture])
			PetActionButton.tooltipName = _G[Name]
		end
		
		PetActionButton.IsToken = IsToken
		PetActionButton.tooltipSubtext = SubText

		if (IsActive and Name ~= "PET_ACTION_FOLLOW") then
			PetActionButton:SetChecked(1)
			if IsPetAttackAction(i) then
				PetActionButton_StartFlash(PetActionButton)
			end
		else
			PetActionButton:SetChecked(0)
			
			if IsPetAttackAction(i) then
				PetActionButton_StopFlash(PetActionButton)
			end			
		end
		
		if AutoCastAllowed then
			PetAutoCastableTexture:Show()
		else
			PetAutoCastableTexture:Hide()
		end
		
		if AutoCastEnabled then
			AutoCastShine_AutoCastStart(PetAutoCastShine)
		else
			AutoCastShine_AutoCastStop(PetAutoCastShine)
		end
		
		if Texture then
			if (GetPetActionSlotUsable(i)) then
				SetDesaturation(PetActionIcon, nil)
			else
				SetDesaturation(PetActionIcon, 1)
			end
			
			PetActionIcon:Show()
		else
			PetActionIcon:Hide()
		end
		
		if (not PetHasActionBar() and Texture and Name ~= "PET_ACTION_FOLLOW") then
			PetActionButton_StopFlash(PetActionButton)
			SetDesaturation(PetActionIcon, 1)
			PetActionButton:SetChecked(0)
		end
	end
end

function DuffedUIActionBars:UpdateStanceBar(...)
	local NumForms = GetNumShapeshiftForms()
	local Texture, Name, IsActive, IsCastable, Button, Icon, Cooldown, Start, Duration, Enable
	
	if NumForms == 0 then
		Panels.StanceBar:SetAlpha(0)
	else
		Panels.StanceBar:SetAlpha(1)
		Panels.StanceBar:SetSize((PetSize * NumForms) + (Spacing * (NumForms + 1)), PetSize + (Spacing * 2))
		
		for i = 1, NUM_STANCE_SLOTS do
			local ButtonName = "StanceButton"..i
			
			Button = _G[ButtonName]
			Icon = _G[ButtonName.."Icon"]
			
			if i <= NumForms then
				Texture, Name, IsActive, IsCastable = GetShapeshiftFormInfo(i)
				
				if not Icon then
					return
				end
				
				Icon:SetTexture(Texture)
				Cooldown = _G[ButtonName.."Cooldown"]
				
				if Texture then
					Cooldown:SetAlpha(1)
				else
					Cooldown:SetAlpha(0)
				end
				
				Start, Duration, Enable = GetShapeshiftFormCooldown(i)
				CooldownFrame_SetTimer(Cooldown, Start, Duration, Enable)
				
				if IsActive then
					StanceBarFrame.lastSelected = Button:GetID()
					Button:SetChecked(1)
				else
					Button:SetChecked(0)
				end

				if IsCastable then
					Icon:SetVertexColor(1.0, 1.0, 1.0)
				else
					Icon:SetVertexColor(0.4, 0.4, 0.4)
				end
			end
		end
	end	
end

DuffedUIActionBars:RegisterEvent("PLAYER_ENTERING_WORLD")
DuffedUIActionBars:RegisterEvent("ADDON_LOADED")
DuffedUIActionBars:RegisterEvent("VARIABLES_LOADED")
DuffedUIActionBars:SetScript("OnEvent", function(self, event, addon)
	if (event == "ADDON_LOADED" and addon == "DuffedUI") then
		self:DisableBlizzard()
		self:AddPanels()
		self:CreateBar1()
		self:CreateBar2()
		self:CreateBar3()
		self:CreateBar4()
		self:CreateBar5()
		self:CreatePetBar()
		self:CreateStanceBar()
		self:ShowGrid()
		self:CreateToggleButtons()
		self:CreateVehicleButtons()
	elseif (event == "PLAYER_ENTERING_WORLD") then
		self:RestoreBarState()
	else
		self:LoadVariables()
	end
end)

T["ActionBars"] = DuffedUIActionBars