function init(ev)
    global.mined_janky_bots = {}
    global.janky_bot_initial_death_chance = 40
    global.janky_bot_death_chance = global.janky_bot_initial_death_chance
    global.janky_bot_death_chance_decrement = 5
end

function on_player_created(ev)
    local player = game.players[ev.player_index]
    if player.character and settings.startup['janky-starter-items'] then
        player.insert({name = 'janky-construction-robot', count = settings.startup['janky-starter-bots'].value})
        player.insert({name = 'janky-robot-light-armor', count = 1})

        local grid = player.get_inventory(defines.inventory.player_armor)[1].grid
        player.print(serpent.block(armor))
        grid.put({ name = 'janky-personal-roboport-equipment'})
    end
end

script.on_init(init)
script.on_event(defines.events.on_player_created, on_player_created)

require('control.bot-destruction')
require('control.research')
