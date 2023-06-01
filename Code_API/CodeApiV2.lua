return(function(args)
    function ExtractCode(argsE)
        local r = "<" .. argsE[2] .. ">(.-)</" .. argsE[2] .. ">"
        local u = {}
        for p in argsE[1]:gmatch(r) do
            if not p:find("must join") and not p:find("Must Be member") and p ~= "" and not p:find("Must be a member") and not p:match("By:") and not p:match("Updated:") and not p:match("(New)") and not p:find("Redeem") and not p:match("Note") and not p:find("+D") and not p:find("Enter Code") and not p:find("looking for codes") and  not p:match("Get Roblox codes") and not p:find("Related")  then
                if not p:match(args[1]) then
                   table.insert(u, p)
                end
            end
        end
        return u
    end
    local Libaray = {}
    function Libaray:GetCode()
        local pu = (syn and syn.request) or (fluxus and request) or (http and http.request) or request
        local m = ExtractCode(pu({Url=args[2],Method="GET"}).Body,"strong")
        local ot = {}
        for is,cv in next,m do
            if is == 1 then
            else
                table.insert(ot,cv)
            end
        end
        return ot
    end
    function Libaray:GetDataUpdate()
        local pu = (syn and syn.request) or (fluxus and request) or (http and http.request) or request
        local m = ExtractCode(pu({Url=args[2],Method="GET"}).Body,"strong")
        local ot
        for is,cv in next,m do
            if is == 1 then
                ot = cv
                break
            end
        end
        return ot
    end
    return Libaray
end)
