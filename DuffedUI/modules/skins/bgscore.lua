local D, C, L = unpack(select(2, ...))

local function LoadSkin()
	WorldStateScoreScrollFrameScrollBar:SkinScrollBar()
	WorldStateScoreFrame:StripTextures()
	WorldStateScoreFrameInset:StripTextures()
	WorldStateScoreFrame:SetTemplate("Transparent")
	WorldStateScoreFrameCloseButton:SkinCloseButton()
	WorldStateScoreFrameInset:Kill()
	WorldStateScoreFrameLeaveButton:SkinButton()

	for i = 1, WorldStateScoreScrollFrameScrollChildFrame:GetNumChildren() do
		local b = _G["WorldStateScoreButton"..i]
		b:StripTextures()
		b:StyleButton(false)
		b:SetTemplate("Default", true)
	end

	for i = 1, 3 do 
		_G["WorldStateScoreFrameTab"..i]:SkinTab()
	end
end

tinsert(D.SkinFuncs["DuffedUI"], LoadSkin)