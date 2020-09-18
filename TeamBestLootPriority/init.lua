-- upvalues
local _G = _G
local GetAddOnMetadata, tostring = GetAddOnMetadata, tostring

-- get engine/addon environment
local AddonName, Engine = ...

-- create a global container for the addon
_G.TeamBestLootPriority = {}
local T = _G.TeamBestLootPriority

-- set engine environment as new global environment
setfenv(1, T)

-- init debugger and add engine
VDT_AddData = _G.ViragDevTool_AddData
VDT_AddData(T, "T")

-- addon globals
ADDON_NAME = AddonName
ADDON_VERSION = tostring(GetAddOnMetadata(AddonName, "Version"))
ADDON_AUTHOR = GetAddOnMetadata(AddonName, "Author")
