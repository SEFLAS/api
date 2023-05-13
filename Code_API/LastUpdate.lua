return(function(A_1)
    function L_1(A_2, A_4)
        local L_2 = "<" .. A_4 .. ">(.-)</" .. A_4 .. ">"
        local O_1 = {}
        for L_3 in A_2:gmatch(L_2) do
            if not L_3:find("must join") and not L_3:find("Must Be member") and L_3 ~= "" and not L_3:find("Must be a member") and not L_3:match("By:") and not L_3:match("Updated:") and not L_3:match("(New)") and not L_3:find("Redeem") and not L_3:match("Note") and not L_3:find("+D") and not L_3:find("Enter Code") and not L_3:find("looking for codes") and  not L_3:match("Get Roblox codes") and not L_3:find("Related")  then
                if not L_3:match(A_1[1]) then
                   table.insert(O_1, L_3)
                end
            end
        end
        return O_1
    end
    local A_5 = (syn and syn.request) or (fluxus and request) or (http and http.request) or request
    local P_9 = A_5({Url=A_1[2],Method="GET"}).Body
    local L_16 = L_1(P_9, "strong")
    return L_16
end)
