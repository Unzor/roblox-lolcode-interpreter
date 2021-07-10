local h={}
local input
h.setInput=function(v)
	input=v
end

if input then
	
else
	input='None'
end
h.interpret=function(code)
	local val=string.gsub(code, [[

]], "(NEWLINE)")

	val=string.gsub(val, [["]], [[(DOUBLEQUOTE)]])

	local array=[[{
"code": "]]..val..[[",
"input": "]]..input..[["
}]]
	local response=game.HttpService:PostAsync("https://lolcode-request-compile.seven7four4.repl.co/interpretLOLCODE", array)
	return response
end

return h
