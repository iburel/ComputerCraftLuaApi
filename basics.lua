function printMethods(side)
	local methods = peripherical.getMethods(side)
	for _, method in pairs(methods) do
		print(method)
	end
end