local expect = dofile("/rom/modules/main/cc/expect.lua").expect

function printMethods(side)
	expect(1, side, "string")

	local methods = peripheral.getMethods(side)
	if methods == nil then
		print("No methods")
		return
	end
	
	for _, method in pairs(methods) do
		print(method)
	end
end