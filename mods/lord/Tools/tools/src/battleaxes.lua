local SL = minetest.get_translator("tools")

return {
	get_recipes = function(source)
		return {{
			{source, 'group:stick', source},
			{source, 'group:stick', source},
			{'', 'group:stick', ''},
		}}
	end,
	wood = {
		description = SL("Wooden Battleaxe"),
		full_punch_interval = 2,
		max_drop_level=1,
		choppy = {times={[1]=3.75, [2]=2.75, [3]=2.05}, uses=5, maxlevel=1},
		snappy = {times={[1]=2.75, [2]=1.75, [3]=0.75}, uses=5, maxlevel=1},
		damage_groups = {fleshy=.50},
		groups = {wooden = 1},
	},
	stone = {
		description = SL("Stone Battleaxe"),
		full_punch_interval = 1.50,
		max_drop_level=1,
		choppy = {times={[1]=3.35, [2]=2.10, [3]=1.85}, uses=5, maxlevel=1},
		snappy = {times={[1]=2.75, [2]=1.75, [3]=0.75}, uses=5, maxlevel=1},
		damage_groups = {fleshy=1.50},
	},
	steel = {
		description = SL("Steel Battleaxe"),
		full_punch_interval = 1.05,
		max_drop_level=1,
		choppy = {times={[1]=3, [2]=1.90, [3]=1.50}, uses=15, maxlevel=2},
		snappy = {times={[1]=2.75, [2]=1.45, [3]=0.60}, uses=25, maxlevel=2},
		damage_groups = {fleshy=4.5},
		groups = {steel_item=1},
	},
	bronze = {
		description = SL("Bronze Battleaxe"),
		full_punch_interval = 0.90,
		max_drop_level=1,
		choppy = {times={[1]=2.80, [2]=1.70, [3]=1.30}, uses=20, maxlevel=2},
		snappy = {times={[1]=2.55, [2]=1.25, [3]=0.50}, uses=30, maxlevel=2},
		damage_groups = {fleshy=5},
		groups = {bronze_item=1},
	},
	copper = {
		description = SL("Copper Battleaxe"),
		full_punch_interval = 1.25,
		max_drop_level=1,
		choppy = {times={[1]=3.25, [2]=2.00, [3]=1.75}, uses=5, maxlevel=1},
		snappy = {times={[1]=2.75, [2]=1.45, [3]=0.60}, uses=10, maxlevel=1},
		damage_groups = {fleshy=3},
		groups = {copper_item=1},
	},
	tin = {
		description = SL("Tin Battleaxe"),
		full_punch_interval = 1.25,
		max_drop_level=1,
		choppy = {times={[1]=3.25, [2]=2.00, [3]=1.75}, uses=5, maxlevel=1},
		snappy = {times={[1]=2.75, [2]=1.45, [3]=0.60}, uses=10, maxlevel=1},
		damage_groups = {fleshy=3},
		groups = {tin_item=1},
	},
	silver = {
		description = SL("Silver Battleaxe"),
		full_punch_interval = 1,
		max_drop_level=1,
		choppy = {times={[1]=2.80, [2]=1.70, [3]=1.30}, uses=15, maxlevel=2},
		snappy = {times={[1]=2.60, [2]=1.30, [3]=0.50}, uses=25, maxlevel=2},
		damage_groups = {fleshy=5.5},
		groups = {silver_item=1},
	},
	gold = {
		description = SL("Gold Battleaxe"),
		full_punch_interval = 0.75,
		max_drop_level=1,
		choppy = {times={[1]=2.80, [2]=1.70, [3]=1.30}, uses=20, maxlevel=2},
		snappy = {times={[1]=2.60, [2]=1.30, [3]=0.50}, uses=30, maxlevel=2},
		damage_groups = {fleshy=5.5},
		groups = {gold_item=1},
	},
	galvorn = {
		description = SL("Galvorn Battleaxe"),
		full_punch_interval = 0.5,
		max_drop_level=1,
		choppy = {times={[1]=2.50, [2]=1.50, [3]=.90}, uses=25, maxlevel=2},
		snappy = {times={[1]=2.50, [2]=1.50, [3]=0.85}, uses=35, maxlevel=2},
		damage_groups = {fleshy=6},
		groups = {forbidden=1, galvorn_item=1},
	},
	mithril = {
		description = SL("Mithril Battleaxe"),
		full_punch_interval = .25,
		max_drop_level=1,
		choppy = {times={[1]=2, [2]=1, [3]=.50}, uses=35, maxlevel=3},
		snappy = {times={[1]=1, [2]=1.10, [3]=0.50}, uses=40, maxlevel=3},
		damage_groups = {fleshy=7},
		groups = {mithril_item=1},
	}
}
