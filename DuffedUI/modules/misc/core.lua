local D, C, L = select(2, ...):unpack()
local Miscellaneous = CreateFrame("Frame")
 
Miscellaneous:RegisterEvent("ADDON_LOADED")
Miscellaneous:SetScript("OnEvent", function(self, event, addon)
	if (addon ~= "DuffedUI") then return end

 	self.ThreatBar:Enable()
	self.MirrorTimers:Enable()
	self.DropDown:Enable()
	self.CollectGarbage:Enable()
	self.AltPowerBar:Enable()
	self.GameMenu:Enable()
	
	self:UnregisterEvent("ADDON_LOADED")
end)
 
D["Miscellaneous"] = Miscellaneous