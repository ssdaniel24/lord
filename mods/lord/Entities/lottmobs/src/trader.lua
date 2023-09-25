local SL = minetest.get_translator("lottmobs")

--- @type trader.Form
local Form = dofile(minetest.get_modpath("lottmobs").."/src/trader_Form.lua")
--- @type trader.Inventory
local Inventory = dofile(minetest.get_modpath("lottmobs").."/src/trader_Inventory.lua")


--- @param self LuaEntity
--- @param pos  Position
local function face_pos(self, pos)
	local s   = self.object:get_pos()
	local vec = { x = pos.x - s.x, y = pos.y - s.y, z = pos.z - s.z }
	local yaw = math.atan2(vec.z, vec.x) - math.pi / 2
	if self.drawtype == "side" then
		yaw = yaw + (math.pi / 2)
	end
	self.object:set_yaw(yaw)
	return yaw
end

------------------------------------------------------------------------------------------------------------------------

--- @param entity         LuaEntity
--- @param clicker        Player
--- @param trader_def     TraderDef
--- @param race_privilege string
function lottmobs_trader(entity, clicker, trader_def, race_privilege)
	face_pos(entity, clicker:get_pos())
	local player_name = clicker:get_player_name()
--	self.messages = tostring(race.messages[math.random(1,#race.messages)])
	if entity.id == 0 then
		entity.id = (math.random(1, 1000) * math.random(1, 10000)) .. entity.name .. (math.random(1, 1000) ^ 2)
	end
	if entity.game_name == "mob" then
		entity.game_name = tostring(trader_def.names[math.random(1,#trader_def.names)])
		--self.nametag = self.game_name
	end

	minetest.chat_send_player(
		player_name,
		"[NPC] <" .. SL("Trader") .. " " .. SL(entity.game_name) .. "> " ..
			SL("Hello") .. ", " .. player_name .. ", \n" ..
			tostring(trader_def.messages[math.random(1, #trader_def.messages)]) -- messages already translated
	)

	local inventory_id = Inventory:new(clicker, entity, trader_def, race_privilege):get_id()
	Form:new(clicker, inventory_id, entity.game_name):open()

end