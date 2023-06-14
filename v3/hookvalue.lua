return function(src,v)
    local i = {}
    s = src:gsub("<<(%w*)>>",function(l)
        i[l] = v[l] or function() return; end
    end)
    local s,f = loadstring(s)
    if f then return f end
    for m,b in next,i do
        getfenv(s)[m] = b
    end
    return s
end