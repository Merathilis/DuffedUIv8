local AS, ASL = unpack(AddOnSkins)

function AS:UpdateLocale()
	local Locale = GetLocale()

	ASL.EmbedSystem = {}
	ASL.OptionsPanel = {}
	ASL.DataText = {}

	if Locale == "esMX" then
		Locale = "esES"
	end

	ASL.DataText.ToggleEmbed = 'Toggle Embed'
	ASL.DataText.LeftClick = 'Left Click to Show'
	ASL.DataText.RightClick = 'Right Click to Hide'

	ASL.EmbedSystem.ToggleLeftChat = 'Toggle Left Chat Panel'
	ASL.EmbedSystem.ToggleRightChat = 'Toggle Right Chat Panel'
	ASL.EmbedSystem.ToggleEmbed = 'Toggle Embedded AddOn'
	ASL.EmbedSystem.ToggleOptions = 'Toggle Options'

	ASL.OptionsPanel.SkinDesc = 'Enable/Disable this skin.\nThis requires a reload to take effect.'
	ASL.OptionsPanel.EmbedDesc = 'Enable/Disable this embed.'
	ASL.OptionsPanel.OptionDesc = 'Enable/Disable this option.'
	ASL.OptionsPanel.ElvUIDesc = 'This option will toggle the corresponding ElvUI option.'

	ASL["AddOn Skins"] = "AddOn Skins"
	ASL["Blizzard Skins"] = "Blizzard Skins"
	ASL["BossMod Options"] = "BossMod Options"
	ASL["DBM|VEM Font"] = "DBM|VEM Font"
	ASL["DBM|VEM Font Size"] = "DBM|VEM Font Size"
	ASL["DBM|VEM Font Flag"] = "DBM|VEM Font Flag"
	ASL["DBM Transparent Radar"] = "DBM Transparent Radar"
	ASL["None"] = "None"
	ASL["OUTLINE"] = "OUTLINE"
	ASL["THICKOUTLINE"] = "THICKOUTLINE"
	ASL["MONOCHROME"] = "MONOCHROME"
	ASL["MONOCHROMEOUTLINE"] = "MONOCHROMEOUTLINE"
	ASL["DBM|VEM Half-bar Skin"] = "DBM|VEM Half-bar Skin"
	ASL["BigWigs Half-Bar"] = "BigWigs Half-Bar"
	ASL["Embed Settings"] = "Embed Settings"
	ASL["Settings to control Embedded AddOns:\n\nAvailable Embeds: alDamageMeter | Details | Omen | Skada | Recount | TinyDPS"] = "Settings to control Embedded AddOns:\n\nAvailable Embeds: alDamageMeter | Details | Omen | Skada | Recount | TinyDPS" 
	ASL["Single Embed System"] = "Single Embed System"
	ASL["Embed for Main Panel"] = "Embed for Main Panel"
	ASL["Dual Embed System"] = "Dual Embed System"
	ASL["Embed for Left Window"] = "Embed for Left Window"
	ASL["Embed for Right Window"] = "Embed for Right Window"
	ASL["Embed Left Window Width"] = "Embed Left Window Width"
	ASL["Out of Combat (Hide)"] = "Out of Combat (Hide)"
	ASL["Attach SexyCD to action bar"] = "Attach SexyCD to action bar"
	ASL["Attach CoolLine to action bar"] = "Attach CoolLine to action bar"
	ASL["Embed Transparancy"] = "Embed Transparancy"
	ASL["Embed Below Top Tab"] = "Embed Below Top Tab"
	ASL["Details Backdrop"] = "Details Backdrop" 
	ASL["Recount Backdrop"] = "Recount Backdrop"
	ASL["Skada Backdrop"] = "Skada Backdrop"
	ASL["Omen Backdrop"] = "Omen Backdrop"
	ASL["WeakAura AuraBar"] = "WeakAura AuraBar"
	ASL["Auction House"] = "Auction House"
	ASL["FAQ's"] = "FAQ's"
	ASL["DBM/VEM Half-Bar Skin Spacing looks wrong. How can I fix it?"] = "DBM/VEM Half-Bar Skin Spacing looks wrong. How can I fix it?"
	ASL["To use the DBM/VEM Half-Bar skin. You must change the DBM/VEM Options. Offset Y needs to be at least 15."] = "To use the DBM/VEM Half-Bar skin. You must change the DBM/VEM Options. Offset Y needs to be at least 15."
	ASL["Credits"] = "Credits"
	ASL["Credits:"] = "Credits:"
	ASL["About/Help"] = "About/Help"
	ASL["Links"] = "Links"
	ASL["Download Link"] = "Download Link"
	ASL["Changelog Link"] = "Changelog Link"
	ASL["GitLab Link / Report Errors"] = "GitLab Link / Report Errors"
	ASL["Available Skins / Skin Requests"] = "Available Skins / Skin Requests"
	ASL["Version"] = "Version"
	ASL["Left Click to Show"] = "Left Click to Show"
	ASL["Right Click to Hide"] = "Right Click to Hide"
	ASL["Left Click:"] = "Left Click:"
	ASL["Right Click:"] = "Right Click:"
	ASL["Skin Template"] = "Skin Template"
	ASL["Hide Chat Frame"] = "Hide Chat Frame"
	ASL["Embed OoC Delay"] = "Embed OoC Delay"
	ASL['Reset Settings'] = 'Reset Settings'
	ASL["WeakAura Cooldowns"] = "WeakAura Cooldowns"
	ASL["Embed into Right Chat Panel"] = "Embed into Right Chat Panel"
	ASL["Parchment"] = "Parchment"
	ASL["Enable Skin Debugging"] = "Enable Skin Debugging"
	ASL["Login Message"] = "Login Message"
	ASL["Embed System Message"] = "Embed System Message"
	ASL["Embed Frame Strata"] = "Embed Frame Strata"
	ASL["Embed Frame Level"] = "Embed Frame Level"

	if AS['UpdateLocale_'..Locale] then
		AS['UpdateLocale_'..Locale]()
	end
end