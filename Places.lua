


local function place(tb)
    -- Translate map data into a 2d boolean array
    local oldMapData = tb.MapData
    local newMapData = {}
    for y = 1, 12 do
        local oldRow = oldMapData[y]
        local newRow = {}
        newMapData[y] = newRow
        for step = 0, 3 do
            for offset = 1, 4 do
                local char = oldRow:sub(step*5 + offset, step*5 + offset)
                table.insert(newRow, (char == '#'))
            end
        end
    end
    tb.MapData = newMapData

    return tb
end

local function places(tb)
    local lookup = {}
    for k, v in pairs(tb) do
        lookup[v.Id] = v
    end
    return lookup
end

return places{
    place{
        Id = 'tutorial';
        CreditReward = 1000;
        MapData = {        
            '---- ---- ---- ----';
            '#### #### ##-- ----';
            '#### #### ##-- ----';
            '#### #### ##-- ----';
            '#### #### ##-- ----';
            '#### #### ##-- ----';
            '#### #### ##-- ----';
            '#### #### ##-- ----';
            '---- ---- ---- ----';
            '---- ---- ---- ----';
            '---- ---- ---- ----';
            '---- ---- ---- ----';
        };
        UploadZones = {
            {3, 4}, {4, 6}
        };
        ExtraCreditList = {

        };
        ProgramList = {
            {
                Id = 'sentinel';
                Type = 'enemy';
                Tail = {{7, 4}, {7, 5}, {7, 6}};
            }
        };
    }
}