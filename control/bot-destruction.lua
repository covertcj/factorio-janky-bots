function get_associated_player(robot)
    if not robot.logistic_network then return end

    local logistic_cell = robot.logistic_network.cells[1]
    if not logistic_cell then return end

    local owner = logistic_cell.owner
    if owner and owner.type == 'player' then
        return owner
    end
end

function robot_roulette(robot)
    local r = math.random(0, 99)
    if r >= global.janky_bot_death_chance then return end
    
    local player = get_associated_player(robot)
    if player then
        robot.die(robot.force, player)
    else
        robot.die(robot.force)
    end
end

function on_robot_built_anything(ev)
    if ev.robot.name == 'janky-construction-robot' then
        robot_roulette(ev.robot)
    end
end

function on_built_entity(ev)
    if ev.created_entity.name == 'janky-construction-robot' then
        local player = game.players[ev.player_index]
        player.print('Janky Robots can only be launched from Jank Roboport Equipment')
        player.insert({name = 'janky-construction-robot', count = 1})
        
        ev.created_entity.destroy()
    end
end

function on_robot_mined(ev)
    if ev.robot.name == 'janky-construction-robot' then
        if not get_associated_player(ev.robot) then
            ev.robot.die(ev.robot.force)
            for _, player in pairs(game.players) do
                player.print('Janky Bots are being launch (and destroyed) from a standard roboport', { r=1, g=0, b=0, a=1 })
            end
        else
            global.mined_janky_bots[ev.robot.unit_number] = ev.robot
        end
    end
end

function on_tick(ev)
    for unit_number, robot in pairs(global.mined_janky_bots) do
        if not robot.valid then
            global.mined_janky_bots[unit_number] = nil
        elseif not get_associated_player(robot).valid then
            global.mined_janky_bots[unit_number] = nil
            robot.die(robot.force)
        elseif robot.get_inventory(defines.inventory.robot_cargo).is_empty() then
            global.mined_janky_bots[unit_number] = nil
            robot_roulette(robot)
        end
    end
end

script.on_event(defines.events.on_robot_built_entity, on_robot_built_anything)
script.on_event(defines.events.on_robot_built_tile, on_robot_built_anything)
script.on_event(defines.events.on_robot_mined, on_robot_mined)
script.on_event(defines.events.on_built_entity, on_built_entity)
script.on_event(defines.events.on_tick, on_tick)
