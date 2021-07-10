local lolcode=require(game.ReplicatedStorage.LOLCode_Interpreter)
	local interpretedCode=lolcode.interpret([[HAI 1.2
    VISIBLE "Hello, World!"
KTHXBYE]])

	print(interpretedCode)
