local util = require("util")
local evolution_levels = require("levels")

local last_attack = 0
local cooldown = 30*60

script.on_event(defines.events.on_entity_damaged, function(event)
  if event.entity.force == game.forces['enemy'] then
    last_attack = game.ticks_played + cooldown
  end
end)

script.on_event(defines.events.on_tick, function(event)  
  if game.ticks_played % 100 == 0 then
    
    if game.ticks_played > last_attack then
      local package = evolution_levels.current_package()
      for _, player in pairs(game.forces.player.players) do
        evolution_levels.set_player_package(player,package)
      end
      last_attack = game.ticks_played + cooldown
    end
  end
  if game.ticks_played % 10 == 0 then
    local max_robots = game.forces.player.maximum_following_robot_count
    for _, player in pairs(game.forces.player.players) do
      if #player.character.following_robots < max_robots and player.in_combat then
        if player.remove_item({name='destroyer-capsule',count=1}) > 0 then
          player.surface.create_entity({
            name='destroyer-capsule',
            force=player.force,
            position=player.position,
            speed=10,
            source=player.character,
            target=player.position,
          })
        elseif player.remove_item({name='defender-capsule',count=1}) > 0 then
          player.surface.create_entity({
            name='defender-capsule',
            force=player.force,
            position=player.position,
            speed=10,
            source=player.character,
            target=player.position,
          })
        end
      end
    end
  end
end)

script.on_event(defines.events.on_player_created, function(event)
  local player = game.players[event.player_index]
  local package = evolution_levels.current_package()
  evolution_levels.set_player_package(player,package)

  local r = 200
  player.force.chart(player.surface, {{player.position.x - r, player.position.y - r}, {player.position.x + r, player.position.y + r}})
end)

script.on_event(defines.events.on_player_respawned, function(event)
  local player = game.players[event.player_index]
  local package = evolution_levels.current_package()
  evolution_levels.set_player_package(player,package)
end)

script.on_configuration_changed(function(event)

end)

script.on_event(defines.events.on_game_created_from_scenario, function(event)
  for _, technology in pairs(game.forces.player.technologies) do
    technology.enabled = false
  end
  for _, recipe in pairs(game.forces.player.recipes) do
    recipe.enabled = false
  end
end)

local evo_skip = function(data)
  local player = game.players[data.player_index]
  if type(tonumber(data.parameter)) == 'number' and (tonumber(data.parameter) >= 0 and tonumber(data.parameter) <= 100) then
    local new_evo = 0
    if tonumber(data.parameter) > 0 then
      new_evo = tonumber(data.parameter)/100
    end
    game.forces.enemy.evolution_factor = new_evo
    evolution_levels.reload_all_players()
  else
    player.print("use a number between 0 and 100")
  end
end

local loadout_skip = function(data)
  local player = game.players[data.player_index]
  if data.parameter then
    local result = evolution_levels.set_evo_to_package(tonumber(data.parameter))
    if result then
      return true
    end
  else
    local result = evolution_levels.set_evo_to_package(global.current_level + 1)
    if result then
      return true
    end
  end
  player.print("enter a valid package number: "..evolution_levels.loadout_list())
  return false
end


script.on_load(function()
  commands.add_command("skipevo","A command to skip to a given evolution level",evo_skip)
  commands.add_command("skiploadout","A command to skip to a given loadout level",loadout_skip)
end)

script.on_init(function()
  global.current_level = 1
  commands.add_command("skipevo","A command to skip to a given evolution level",evo_skip)
  commands.add_command("skiploadout","A command to skip to a given loadout level",loadout_skip)
end)
