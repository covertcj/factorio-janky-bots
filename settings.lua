data:extend({
    {
        type = 'bool-setting',
        name = 'janky-starter-items',
        setting_type = 'startup',
        default_value = true
    },
    {
        type = 'int-setting',
        name = 'janky-starter-bots',
        setting_type = 'startup',
        default_value = 400,
        minimum_value = 100,
        maximum_value = 1000
    },

    {
        type = 'int-setting',
        name = 'janky-bots-per-craft',
        setting_type = 'startup',
        default_value = 5,
        minimum_value = 1,
        maximum_value = 100
    },

    {
        type = 'int-setting',
        name = 'janky-bots-breakdown-percent',
        setting_type = 'startup',
        default_value = 90,
        minimum_value = 0,
        maximum_value = 100
    },
    {
        type = 'int-setting',
        name = 'janky-bots-breakdown-research-decrement',
        setting_type = 'startup',
        default_value = 20,
        minimum_value = 1,
        maximum_value = 100
    },
})
