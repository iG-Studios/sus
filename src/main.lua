--[[

> = Move pointer by 1
< = Move pointer by -1
+ = Add to current pointer value
- = Subtract to current pointer value
| = Convert current pointer value to ASCII and add to output string
$ = If current pointer value is 0, skip *past* the next "!"
! = Go back to the previous "$"

--]]

local DefaultPointerValue = 97

local function CompileCode(Code)
	local Array = {}
	
	local PointerIndex = 0
	local Reader = 1
	
	local Jump = false
	local Return = false
	
	local Length = Code:len()
	
	local Output = ""
	
	local function ModifyValue(Amount)
		if Array[PointerIndex] then
			Array[PointerIndex] = Array[PointerIndex] + Amount
		else
			Array[PointerIndex] = DefaultPointerValue + Amount
		end
	end
	
	local FunctionRemaps = {
		[">"] = function()
			PointerIndex = PointerIndex + 1
		end,
		
		["<"] = function()
			PointerIndex = PointerIndex - 1
		end,
		
		["+"] = function()
			ModifyValue(1)
		end,
		
		["-"] = function()
			ModifyValue(-1)
		end,
		
		["|"] = function()
			Array[PointerIndex] = Array[PointerIndex] or DefaultPointerValue
			
			Output = Output .. string.char(Array[PointerIndex])
		end,
		
		["$"] = function()
			Return = false
			
			if Array[PointerIndex] == DefaultPointerValue then
				Jump = true
			end
		end,
		
		["!"] = function()
			if Jump then
				Jump = false
			else
				Return = true
			end
		end,
	}
	
	while Reader <= Length do
		if Reader < 1 then
			error("Reader out of bounds")
		end
		
		local Input = Code:sub(Reader, Reader)

		if (not Jump and not Return) or (Jump and Input == "!") or (Return and Input == "$") then
			local Function = FunctionRemaps[Input]

			if Function then
				Function()
			end
		end
		
		if Return then
			Reader = Reader - 1
		else
			Reader = Reader + 1
		end
	end
	
	return Output
end

function love.load()
    local Font = love.graphics.getFont()
    local MainPath = love.filesystem.getSourceBaseDirectory()
    local File = io.open("input.txt", "r")

    io.input(File)

    local TextInput = io.read()
    local TextOutput = CompileCode(TextInput)

    io.close(File)
        
    TextObject = love.graphics.newText(Font, TextOutput)
end

function love.draw()
    love.graphics.draw(TextObject, 0, 0)
end