local AchievementLocationSharer = {
	Title = "Achievement location sharer",
	Author = "Ek1",
	Description = "Semi-automatic sharing of achievement locations",
	Version = "18.07.17",
	License = "BY-SA = Creative Commons Attribution-ShareAlike 4.0 International License",
	www = "https://github.com/Ek1/AchievementLocationSharer"
}
	
-- Handle: EVENT_CHATTER_BEGIN (number eventCode, number optionCount)
function AchievementLocationSharer.EventChatterBegin()
-- GetGameCameraInteractableActionInfo()
	if GetUnitName("interact") ~= "M'aiq the Liar" then
		d( "Jutellaan " .. GetUnitName("interact") .. " kanssa ")
--[[		
		local x, y, z = GetMapPlayerPosition("player")
		x = x * 100
		y = y * 100
		z = z * 100
		
/script d( string.format("%dx%d", math.pi*10,  math.pi *<todo>) )
		
-- /script d ( string.gsub("banana", "(an)", "%1-")  )
-- /script d ( string.format("%g",math.pi) )
		StartChatInput("M'aiq the Liar @ " .. GetPlayerActiveZoneName() .. ", " .. GetPlayerLocationName() .. " " .. x .. " " .. y, party)
	end
]]--
	end
end
-- Registering event
EVENT_MANAGER:RegisterForEvent(AchievementLocationSharer.Title, EVENT_CHATTER_BEGIN, AchievementLocationSharer.EventChatterBegin)