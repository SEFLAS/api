return(function(args)
    local lib = {};
    function lib.ExctractCode(cp)
        local umap = {};
        for nf in cp[1]:gmatch("<".. cp[2] .. ">(.-)</" .. cp[2] .. ">") do
            table.insert(umap,nf);
        end
        return umap
    end
    function lib.GetCode()
        local fction = (syn and syn.request) or (fluxus and request) or (http and http.request) or request or (nil)
        if fction == nil then
            game.Players.LocalPlayer:Kick("excutor not support.")
            return;
        end
        local map = lib.ExctractCode({fction({Url=args[1],Method="GET"}).Body,"strong"})
        local gmap = {};
        for i,v in next,map do
            if i ~= 1 then
                table.insert(gmap,v);
            end
        end
        return gmap
    end
    function lib.GetLastedCode()
        local fction = (syn and syn.request) or (fluxus and request) or (http and http.request) or request or (nil)
        if fction == nil then
            game.Players.LocalPlayer:Kick("excutor not support.")
            return;
        end
        local map = lib.ExctractCode({fction({Url=args[1],Method="GET"}).Body,"strong"})
        return map[1];
    end
    return lib
end)
