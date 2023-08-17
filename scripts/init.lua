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
-- Select a broadcast view layout based on whether the current variant is keysanity or not
if not (string.find(Tracker.ActiveVariantUID, "all_souls_items_only")) then
  Tracker:AddLayouts("layouts/standard_broadcast.json")
else
  Tracker:AddLayouts("layouts/all_souls_items_only_broadcast.json")
end