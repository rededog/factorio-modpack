for name, item in pairs(data.raw.item) do
	if item.place_as_tile and item.stack_size < 1000 then item.stack_size = 1000 end
end