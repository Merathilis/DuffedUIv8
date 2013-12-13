local D, C, L = select(2, ...):unpack()

local DuffedUIUnitFrames = T["UnitFrames"]
local Class = select(2, UnitClass("player"))

function DuffedUIUnitFrames:AddDeathKnightFeatures()
	local RunesBar = CreateFrame("Frame", nil, self)
	local TotemBar = self.Totems
	local Shadow = self.Shadow

	-- Runes
	RunesBar:Point("BOTTOMLEFT", self, "TOPLEFT", 0, 1)
	RunesBar:Size(250, 8)
	RunesBar:SetBackdrop(DuffedUIUnitFrames.Backdrop)
	RunesBar:SetBackdropColor(0, 0, 0)
	RunesBar:SetBackdropBorderColor(0, 0, 0)

	for i = 1, 6 do
		RunesBar[i] = CreateFrame("StatusBar", nil, RunesBar)
		RunesBar[i]:Height(8)
		RunesBar[i]:SetStatusBarTexture(C.Medias.Normal)

		if i == 1 then
			RunesBar[i]:Width(40)
			RunesBar[i]:Point("LEFT", RunesBar, "LEFT", 0, 0)
		else
			RunesBar[i]:Width(41)
			RunesBar[i]:Point("LEFT", RunesBar[i-1], "RIGHT", 1, 0)
		end
	end

	-- Shadow Effect Updates
	Shadow:Point("TOPLEFT", -4, 12)
	
	-- Totem Colors
	T["Colors"].totems = {
		[1] = {0.60, 0.40, 0},
	}

	-- Totem Bar (Deathknight Ghoul)
	TotemBar:ClearAllPoints()
	TotemBar:Point("BOTTOMLEFT", self, "TOPLEFT", 0, 10)

	TotemBar[1]:ClearAllPoints()
	TotemBar[1]:SetAllPoints()

	for i = 2, MAX_TOTEMS do
		TotemBar[i]:Hide()
	end

	TotemBar:SetScript("OnShow", function(self) 
		DuffedUIUnitFrames.UpdateShadow(self, "OnShow", -4, 22)
	end)

	TotemBar:SetScript("OnHide", function(self)
		DuffedUIUnitFrames.UpdateShadow(self, "OnHide", -4, 12)
	end)

	-- Register
	self.Runes = RunesBar
end