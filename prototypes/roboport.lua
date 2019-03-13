local ModSupport = require('mod-support')

local roboport = table.deepcopy(data.raw['roboport-equipment']['personal-roboport-equipment'])
roboport.name = 'janky-personal-roboport-equipment'
roboport.take_result = roboport.name
roboport.robot_limit = 15
roboport.construction_radius = 15
roboport.sprite.filename = '__JankyBots__/graphics/equipment/janky-personal-roboport-equipment.png'
roboport.shape = {width = 1, height = 1, type = 'full'}
roboport.charging_energy = '0kW'
roboport.energy_source = {type = 'electric', buffer_capacity = '0kW', usage_priority = 'secondary-input'}
roboport.categories = {'janky-robot-equipment'}

local roboport_mk2 = table.deepcopy(roboport)
roboport_mk2.name = roboport.name .. '-mk2'
roboport_mk2.take_result = roboport_mk2.name
roboport_mk2.robot_limit = 25
roboport_mk2.construction_radius = 25

data:extend({
    roboport,
    roboport_mk2,
    {
        type = 'item',
        name = roboport.name,
        icon = '__JankyBots__/graphics/icons/janky-personal-roboport-equipment.png',
        icon_size = 32,
        placed_as_equipment_result = roboport.name,
        flags = {},
        subgroup = 'equipment',
        -- order = 'e[robotics]-a[janky-personal-roboport-equipment]',
        stack_size = 10
    },
    {
        type = 'item',
        name = roboport_mk2.name,
        icon = '__JankyBots__/graphics/icons/janky-personal-roboport-equipment-mk2.png',
        icon_size = 32,
        placed_as_equipment_result = roboport_mk2.name,
        flags = {},
        subgroup = 'equipment',
        stack_size = 10
    },
    {
        type = 'recipe',
        name = roboport.name,
        enabled = false,
        energy_required = 10,
        ingredients = {
            {ModSupport.circuit, 10},
            {'iron-plate', 50},
            {'iron-gear-wheel', 25}
        },
        result = roboport.name
    },
    {
        type = 'recipe',
        name = roboport_mk2.name,
        enabled = false,
        energy_required = 10,
        ingredients = {
            {roboport.name, 4},
            {'steel-plate', 50}
        },
        result = roboport_mk2.name
    }
})
