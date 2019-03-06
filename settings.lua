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
        maximum_value = 600
    },

    {
        type = 'int-setting',
        name = 'janky-bots-per-craft',
        setting_type = 'startup',
        default_value = 2,
        minimum_value = 1,
        maximum_value = 5
    },
})
