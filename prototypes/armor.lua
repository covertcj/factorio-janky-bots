local ModSupport = require('mod-support')

local light_armor = table.deepcopy(data.raw.armor['light-armor'])
light_armor.name = 'janky-robot-light-armor'
light_armor.icon = '__JankyBots__/graphics/icons/janky-light-armor.png'
light_armor.equipment_grid = 'janky-robot-small-equipment-grid'

local heavy_armor = table.deepcopy(data.raw.armor['heavy-armor'])
heavy_armor.name = 'janky-robot-heavy-armor'
heavy_armor.icon = '__JankyBots__/graphics/icons/janky-heavy-armor.png'
heavy_armor.equipment_grid = 'janky-robot-medium-equipment-grid'

data:extend({
    light_armor,
    heavy_armor,
    {
        type = 'equipment-grid',
        name = 'janky-robot-small-equipment-grid',
        width = 1,
        height = 1,
        equipment_categories = { 'janky-robot-equipment' }
    },
    {
        type = 'equipment-grid',
        name = 'janky-robot-medium-equipment-grid',
        width = 2,
        height = 1,
        equipment_categories = { 'janky-robot-equipment' }
    },

    {
        type = 'recipe',
        name = light_armor.name,
        result = light_armor.name,

        enabled = false,
        energy_required = 10,
        ingredients = {
            {'light-armor', 1},
            {'iron-gear-wheel', 10},
            {ModSupport.circuit, 10}
        },
    },
    {
        type = 'recipe',
        name = heavy_armor.name,
        result = heavy_armor.name,

        enabled = false,
        energy_required = 10,
        ingredients = {
            {'heavy-armor', 1},
            {'iron-gear-wheel', 20},
            {ModSupport.circuit, 20}
        },
    }
})
