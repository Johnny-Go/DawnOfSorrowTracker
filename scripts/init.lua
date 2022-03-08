--  Load configuration options up front
ScriptHost:LoadScript("scripts/settings.lua")

Tracker:AddItems("items/common.json")
Tracker:AddItems("items/items.json")

if not (string.find(Tracker.ActiveVariantUID, "items_only")) then
  ScriptHost:LoadScript("scripts/logicfunctions.lua")
  Tracker:AddMaps("maps/maps.json")
  Tracker:AddLocations("locations/locations.json")
  Tracker.DisplayAllLocations = PREFERENCE_DISPLAY_ALL_LOCATIONS
end

Tracker:AddLayouts("layouts/items.json")
Tracker:AddLayouts("layouts/tracker.json")

Tracker:AddLayouts("layouts/broadcast.json")