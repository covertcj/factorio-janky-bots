function init()
    global.mined_janky_bots = {}
    global.janky_bot_initial_death_chance = 40
    global.janky_bot_death_chance = global.janky_bot_initial_death_chance
    global.janky_bot_death_chance_decrement = 5
end

script.on_init(init)

require('control.bot-destruction')
require('control.research')
