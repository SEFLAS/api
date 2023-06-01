## About The Project
- **Make It Free For Deverloper**
- **Credit to me pls**
## Usage
```lua
local api = loadstring(game:HttpGet("https://raw.githubusercontent.com/SEFLAS/api/main/Code_API/apimain.lua"))()
local data = api({<string> <game name>,<Url> Exmaple : https://progameguides.com/roblox/bee-swarm-simulator-codes/}) 
--Url require : https://progameguides.com 
for i,v in next,data do
    if i == 1 then
        print(v[i]) -- Get Data Code Update
    else
	print(v)
    end
end
```
## Callback
![](https://cdn.discordapp.com/attachments/857823544838455306/1106823650600034334/image.png)
- **How to Get Update Data Code**
```lua

local api = loadstring(game:HttpGet("https://raw.githubusercontent.com/SEFLAS/api/main/Code_API/apimain.lua"))()
local i = api({<string> <game name>,<Url> Exmaple : https://progameguides.com/roblox/bee-swarm-simulator-codes/})
print(i[1]) -- Get data Update
```
## Developer
- **SEFLAS#5018**
## Community
- **d0i Community** [Discord Server](https://discord.gg/BRpYWyw8Qz)
