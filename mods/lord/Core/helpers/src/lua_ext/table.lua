local table_indexOf, table_copy, pairs, next
	= table.indexof, table.copy, pairs, next


--- @param table table
--- @param value any
--- @return boolean
function table.contains(table, value)
	return table_indexOf(table, value) ~= -1
end

table.has_value = table.contains

--- @param table    table
--- @param find_key string
function table.has_key(table, find_key)
	for key, _ in pairs(table) do
		if key == find_key then
			return true
		end
	end
	return false
end

--- @overload fun(table1:table, table2:table):table
--- @param table1 table
--- @param table2 table
--- @param overwrite boolean whether to overwrite the `table1` (default: false)
--- @return table
function table.merge(table1, table2, overwrite)
	overwrite = overwrite or false
	local merged_table = overwrite and table1 or table_copy(table1)
	for key, value in pairs(table2) do
		merged_table[key] = value
	end
	return merged_table
end
local table_merge = table.merge

--- @param table1 table
--- @param table2 table
function table.overwrite(table1, table2)
	return table_merge(table1, table2, true)
end

--- @param table table
--- @return boolean
function table.is_empty(table)
	return next(table) == nil
end