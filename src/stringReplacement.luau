local module = {}

function module.PerformTests(required)
		if typeof(required) ~= "function" then
			return "module should return a function"
		end

  local testArray = {"baller", "yaller", "qualler", "mer"}
  
		for _, v in testArray do
        local answer = required(v)
        local rightAnswer = "
        for i2, v2 in string.split(v, "er") do
            rightAnswer = rightAnswer .. v2 .. "ing"
        end

        if answer ~= rightAnswer then
            return "modules's function returned the wrong string, right answer: {rightAnswer}, module's answer: {answer}"
        end
    end

	return true
end

function module.Run(required)

	local result = module.PerformTests(required)

	return result
end

return module
