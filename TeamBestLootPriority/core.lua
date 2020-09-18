-- upvalues
local _G = _G
local GameTooltip, ItemRefTooltip, print, sformat = GameTooltip, ItemRefTooltip, print, string.format

-- create a global container for the addon
local T = _G.TeamBestLootPriority

-- set engine environment as new global environment
setfenv(1, T)

GameTooltip:HookScript("OnTooltipSetItem", function(tooltip, ...)
	local itemName, itemLink = tooltip:GetItem()
	if itemLink then
		local itemId = itemLink:match("item:(%d+):")
		if T.loot[itemId] then
			local prio = T.loot[itemId].prio
			if prio then
				local text = sformat("|c008aecff%s", prio)
				tooltip:AddLine(text)
			end
		end
	end
end)
