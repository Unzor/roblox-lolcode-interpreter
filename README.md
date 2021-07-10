# roblox-lolcode-interpreter
A LOLCODE Interpreter for Roblox written in JavaScript and Luau.

# How to build & run
First, run this code in terminal (or in Git if you are using Windows):
```
git clone https://github.com/Unzor/roblox-lolcode-interpreter
cd roblox-lolcode-interpreter
cd node
npm init -y
npm install
node index.js
```
After that, your page should be running at localhost:8000.
Port your site to NGROK, or use other software.
When you have your NGROK site, copy it, and save it for later.

Create a new ROBLOX game, and turn on HTTP requests.
Then, add the "LOLCode_Interpreter.lua" file to your game in ReplicatedStorage. (You can paste it in a ModuleScript too)
Change the _url_ variable to your NGROK site, and add /interpretLOLCODE to the end of your NGROK URL.

Now you can test your code in ROBLOX! Create a script in Workspace, and use the LOLCODE Interpreter API like this:

 ```lua
local lolcode=require(game.ReplicatedStorage.LOLCode_Interpreter)
	local interpretedCode=lolcode.interpret([[HAI 1.2
    VISIBLE "Hello, World!"
KTHXBYE]])

	print(interpretedCode)
```

You can add input by using ```lolcode.setInput("v") ```.
