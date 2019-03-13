local function starts_with(str, start)
   return str:sub(1, #start) == start
end

local percentage_prefix = 'janky-robot-death-percentage-'
function on_research_finished(ev)
    if starts_with(ev.research.name, percentage_prefix) then
        local research_level = tonumber(ev.research.name:sub(-1))
        global.janky_bot_death_chance = settings.startup['janky-bots-breakdown-percent'].value - settings.startup['janky-bots-breakdown-research-decrement'].value * research_level
        if global.janky_bot_death_chance < 0 then
            global.janky_bot_death_chance = 0
        end
    end
end

script.on_event(defines.events.on_research_finished, on_research_finished)
