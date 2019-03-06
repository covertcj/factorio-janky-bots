data:extend({
    {
        type = 'technology',
        name = 'janky-robot-light-armor',
        icon = '__JankyBots__/graphics/icons/janky-light-armor.png',
        icon_size = 32,
        
        effects = {
            {
                type = 'unlock-recipe',
                recipe = 'janky-construction-robot'
            },
            {
                type = 'unlock-recipe',
                recipe = 'janky-robot-light-armor'
            },
            {
                type = 'unlock-recipe',
                recipe = 'janky-personal-roboport-equipment'
            },
        },
        
        unit = {
            count = 30,
            time = 10,
            ingredients = {{'automation-science-pack', 1}}
        },
    },
    {
        type = 'technology',
        name = 'janky-robot-heavy-armor',
        icon = '__JankyBots__/graphics/icons/janky-heavy-armor.png',
        icon_size = 32,
        
        effects = {
            {
                type = 'unlock-recipe',
                recipe = 'janky-robot-heavy-armor'
            }
        },
        
        prerequisites = {'heavy-armor', 'janky-robot-light-armor'},
        
        unit = {
            count = 100,
            time = 20,
            ingredients = {
                {'automation-science-pack', 1},
                {'logistic-science-pack', 1}
            }
        },
    },
    {
        type = 'technology',
        name = 'janky-personal-roboport-equipment-mk2',
        icon = '__JankyBots__/graphics/icons/janky-personal-roboport-equipment-mk2.png',
        icon_size = 32,
        
        effects = {
            {
                type = 'unlock-recipe',
                recipe = 'janky-personal-roboport-equipment-mk2'
            }
        },
        
        prerequisites = {'janky-robot-heavy-armor'},
        
        unit = {
            count = 150,
            time = 25,
            ingredients = {
                {'automation-science-pack', 1},
                {'logistic-science-pack', 1}
            }
        },
    },
    
    {
        type = 'technology',
        name = 'janky-robot-death-percentage-1',
        icon = '__JankyBots__/graphics/icons/janky-construction-robot.png',
        icon_size = 32,
        
        upgrade = true,
        
        effects = {
            {
                type = 'nothing',
                effect_description = {'technology-effect.janky-robot-death-percentage'}
            }
        },
        
        prerequisites = {'janky-robot-light-armor'},
        
        unit = {
            count = 100,
            time = 15,
            ingredients = {{'automation-science-pack', 1}}
        }
    },
    {
        type = 'technology',
        name = 'janky-robot-death-percentage-2',
        icon = '__JankyBots__/graphics/icons/janky-construction-robot.png',
        icon_size = 32,
        
        upgrade = true,
        
        effects = {
            {
                type = 'nothing',
                effect_description = {'technology-effect.janky-robot-death-percentage'}
            }
        },
        
        prerequisites = {'janky-robot-death-percentage-1'},
        
        unit = {
            count = 150,
            time = 20,
            ingredients = {
                {'automation-science-pack', 1},
            }
        }
    },
    {
        type = 'technology',
        name = 'janky-robot-death-percentage-3',
        icon = '__JankyBots__/graphics/icons/janky-construction-robot.png',
        icon_size = 32,
        
        upgrade = true,
        
        effects = {
            {
                type = 'nothing',
                effect_description = {'technology-effect.janky-robot-death-percentage'}
            }
        },
        
        prerequisites = {'janky-robot-death-percentage-2', 'janky-robot-heavy-armor'},
        
        unit = {
            count = 150,
            time = 25,
            ingredients = {
                {'automation-science-pack', 1},
                {'logistic-science-pack', 1}
            }
        }
    },
    {
        type = 'technology',
        name = 'janky-robot-death-percentage-4',
        icon = '__JankyBots__/graphics/icons/janky-construction-robot.png',
        icon_size = 32,
        
        upgrade = true,
        
        effects = {
            {
                type = 'nothing',
                effect_description = {'technology-effect.janky-robot-death-percentage'}
            }
        },
        
        prerequisites = {'janky-robot-death-percentage-3'},
        
        unit = {
            count = 200,
            time = 30,
            ingredients = {
                {'automation-science-pack', 1},
                {'logistic-science-pack', 1}
            }
        }
    }
})
