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

function pulse(side, timer1, timer2)
	expect(1, side, "string")
	expect(2, timer1, "number", "nil")
	expect(3, timer2, "number", "nil")
	
	if timer1 == nil then
		timer1 = 0.1
	end
	
	if timer2 == nil then
		timer2 = 0.1
	end
	
	redstone.setOutput(side, true)
	sleep(timer1)
	redstone.setOutput(side, false)
	sleep(timer2)
end