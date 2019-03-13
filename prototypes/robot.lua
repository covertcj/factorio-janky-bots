local ModSupport = require('mod-support')

local robot = table.deepcopy(data.raw['construction-robot']['construction-robot'])
robot.name = 'janky-construction-robot'
robot.icon = '__JankyBots__/graphics/icons/janky-construction-robot.png'
robot.max_energy = '0MJ'
robot.energy_per_tick = '0kJ'
robot.energy_per_move = '0kJ'
robot.speed_multiplier_when_out_of_energy = 1
robot.minable = {minable = false, mining_time=1}

robot.idle.filename = '__JankyBots__/graphics/entity/construction-robot/janky-construction-robot.png'
robot.idle.hr_version.filename = '__JankyBots__/graphics/entity/construction-robot/hr-janky-construction-robot.png'
robot.in_motion.filename = '__JankyBots__/graphics/entity/construction-robot/janky-construction-robot.png'
robot.in_motion.hr_version.filename = '__JankyBots__/graphics/entity/construction-robot/hr-janky-construction-robot.png'
robot.working.filename = '__JankyBots__/graphics/entity/construction-robot/janky-construction-robot-working.png'
robot.working.hr_version.filename = '__JankyBots__/graphics/entity/construction-robot/hr-janky-construction-robot-working.png'

local robot_item = table.deepcopy(data.raw.item['construction-robot'])
robot_item.name = robot.name
robot_item.icon = robot.icon
robot_item.order = 'a[robot]-b[' .. robot.name .. ']'
robot_item.place_result = robot.name
robot_item.stack_size = 200

data:extend({
    robot,
    robot_item,
    {
        type = 'recipe',
        name = robot.name,
        enabled = false,
        energy_required = 1,
        ingredients = {
            {'repair-pack', 1},
            {'coal', 1},
            {ModSupport.circuit, 1}
        },
        
        result = robot.name,
        result_count = settings.startup['janky-bots-per-craft'].value
    }
})
