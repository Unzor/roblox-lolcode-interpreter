local _url_="YOUR URL HERE"
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
	local response=game.HttpService:PostAsync(_url_, array)
	return response
end

return h
