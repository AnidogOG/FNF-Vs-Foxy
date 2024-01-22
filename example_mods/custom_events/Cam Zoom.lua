-- Event notes hooks
function onEvent(name, value1, value2)
    local var amountOZoom = tonumber(value1)
    local var ughgh = tonumber(value2)
    if name == "Cam Zoom" then
        setProperty('defaultCamZoom', 0 + amountOZoom)
    end
end

-- For some ungodly reason this doesn't work unless opponent hits a note?
-- why please ugh