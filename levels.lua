local evolution = {}

evolution.levels = {}

evolution.levels[1] = {
  name="starting",
  threshold = 0,
  technology = {},
  inventory = {
    {name='pistol',count=1},
    {name='raw-fish',count=3},
    {name='firearm-magazine',count=200},
    {name='light-armor',count=1},
    {name='big-electric-pole',count=1},
  },
  message = "Given loadout 1: starter equipment",
}

evolution.levels[2] = {
  name="red",
  threshold = 1,
  technology = {
    'bullet-damage-1',
    'bullet-speed-1',
    'shotgun-shell-damage-1',
    'shotgun-shell-speed-1',
  },
  inventory = {
    {name='submachine-gun',count=1},
    {name='shotgun',count=1},
    {name='shotgun-shell',count=50},
    {name='heavy-armor',count=1},
    {name='gun-turret',count=1},
    {name='repair-pack',count=10},
  },
  message = "Red Science Upgrades incoming: submachine gun + shotgun",
}

evolution.levels[3] = {
  name="green",
  threshold = 15,
  inventory = {
    {name='piercing-rounds-magazine',count=200},
    {name='grenade',count=50},
    {name='car',count=1},
    {name='coal',count=50},
  },
  technology = {
    'bullet-damage-2',
    'bullet-speed-2',
    'bullet-speed-3',
    'shotgun-shell-damage-2',
    'shotgun-shell-speed-2',
    'shotgun-shell-speed-3',
    'gun-turret-damage-1',
    'gun-turret-damage-2',
  },
  message = "Green Science Upgrades incoming: car + piercing ammo",
}

evolution.levels[4] = {
  name="black",
  threshold = 23,
  inventory = {},
  technology = {
    'grenade-damage-1',
    'grenade-damage-2',
    'grenade-damage-3',
    'bullet-damage-3',
    'bullet-damage-4',
    'bullet-speed-4',
    'shotgun-shell-damage-3',
    'shotgun-shell-damage-4',
    'shotgun-shell-speed-4',
    'gun-turret-damage-3',
    'gun-turret-damage-4',
  },
  message = "Black Science Upgrades incoming: passive damage buffs",
}

evolution.levels[5] = {
  name="oil",
  threshold = 50,
  inventory = {
    {name='modular-armor',count=1},
    {name='energy-shield-equipment',count=2},
    {name='battery-equipment',count=2},
    {name='night-vision-equipment',count=1},
    {name='solar-panel-equipment',count=5},
    {name='defender-capsule',count=50},
    {name='rocket-launcher',count=1},
    {name='rocket',count=50},
    {name='rocket-fuel',count=50},
    {name='land-mine',count=50},
    {name='flamethrower',count=1},
    {name='flamethrower-ammo',count=200},
  },
  technology = {
    'follower-robot-count-1',
    'follower-robot-count-2',
    'combat-robot-damage-1',
    'combat-robot-damage-2',
    'rocket-speed-1',
    'rocket-speed-2',
    'rocket-damage-1',
    'rocket-damage-2',
    'flamethrower-damage-1',
    'flamethrower-damage-2',
  },
  message = "Oil Upgrades incoming: flamethrower + rockets + modular armor",
}

evolution.levels[6] = {
  name="blue",
  threshold = 60,
  inventory = {
    {name='poison-capsule',count=50},
    {name='slowdown-capsule',count=50},
    {name='combat-shotgun',count=1},
    {name='explosive-rocket',count=50},
    {name='tank',count=1},
    {name='cannon-shell',count=50},
    {name='explosive-cannon-shell',count=50},
    {name='distractor-capsule',count=50},
  },
  technology = {
    'combat-robotics-2',
    'cannon-shell-damage-1',
    'cannon-shell-damage-2',
    'cannon-shell-damage-3',
    'cannon-shell-speed-1',
    'cannon-shell-speed-2',
    'cannon-shell-speed-3',
    'follower-robot-count-3',
    'follower-robot-count-4',
    'combat-robot-damage-3',
    'combat-robot-damage-4',
    'flamethrower-damage-3',
    'flamethrower-damage-4',
    'bullet-damage-5',
    'bullet-speed-5',
    'shotgun-shell-damage-5',
    'shotgun-shell-speed-5',
    'grenade-damage-4',
    'grenade-damage-5',
    'rocket-speed-3',
    'rocket-speed-4',
    'rocket-speed-5',
    'rocket-damage-3',
    'rocket-damage-4',
    'rocket-damage-5',
    'gun-turret-damage-5',
  },
  message = "Blue Science upgrades incoming: tank + capsules + passive boost",
}

evolution.levels[7] = {
  name="processing",
  threshold = 75,
  technology = {},
  inventory = {
    {name='power-armor',count=1},
    {name='discharge-defense-equipment',count=3},
    {name='discharge-defense-remote',count=1},
    {name='energy-shield-mk2-equipment',count=3},
    {name='battery-mk2-equipment',count=3},
    {name='personal-laser-defense-equipment',count=3},
  },
  message = "Processing Unit upgrades incoming: power armor + better equipment",
}

evolution.levels[8] = {
  name="yellow",
  threshold = 85,
  inventory = {
    {name='destroyer-capsule',count=50},
    {name='cluster-grenade',count=50},
    {name='piercing-shotgun-shell',count=50},
    {name='power-armor-mk2',count=1},
    {name='fusion-reactor-equipment',count=1},
  },
  technology = {
    'combat-robotics-3',
    'follower-robot-count-5',
    'follower-robot-count-6',
    'combat-robot-damage-5',
    'bullet-damage-6',
    'shotgun-shell-damage-6',
    'cannon-shell-damage-4',
    'cannon-shell-damage-5',
    'cannon-shell-speed-4',
    'cannon-shell-speed-5',
    'grenade-damage-6',
    'flamethrower-damage-5',
    'flamethrower-damage-6',
    'bullet-speed-6',
    'shotgun-shell-speed-6',
    'gun-turret-damage-6',
    'rocket-speed-6',
    'rocket-speed-7',
    'rocket-damage-6',
  },
  message = "Yellow Science upgrades incoming: new power armor + robots + ammo",
}

evolution.levels[9] = {
  name="nuclear",
  threshold = 90,
  technology = {},
  inventory = {
    {name='uranium-rounds-magazine',count=50},
    {name='uranium-cannon-shell',count=50},
    {name='explosive-uranium-cannon-shell',count=50},
    {name='atomic-bomb',count=1},
  },
  message = "Nuclear upgrades incoming: DU rounds and nukes",
}

evolution.levels[10] = {
  name="artillery",
  threshold = 95,
  technology = {},
  inventory = {
    {name='artillery-turret',count=1},
    {name='artillery-shell',count=1},
    {name='artillery-targeting-remote',count=1},
  },
  message = "Artillery upgrades incoming: you win!",
}

evolution.levels[11] = {
  threshold = 120,
  technology = {},
  inventory = {},
  robots = {},
  message = "You shouldnt see this message",
}

evolution.current_package = function()
  local biter_evo = game.forces.enemy.evolution_factor * 100
  print("Biter Evolution at: "..biter_evo.."%")
  local package_index = 1
  for count, package in pairs(evolution.levels) do
    if package.threshold <= biter_evo and evolution.levels[count+1].threshold > biter_evo then
      package_index = count
    end
  end
  
  return package_index
end

evolution.clear_all_players_above = function(package_index)
  if package_index < global.current_level then
    for _, technology in pairs(game.forces.player.technologies) do
      technology.enabled = false
      technology.researched = false
    end
    for _, recipe in pairs(game.forces.player.recipes) do
      recipe.enabled = false
    end
    for _, player in pairs(game.forces.player.players) do
      player.clear_items_inside()
    end
  end
end

evolution.loadout_list = function()
  local list = ""
  for index, package in pairs(evolution.levels) do
    if index < #evolution.levels then
      list = list .. " "..index..":"..package.name..", "
    end
  end
  return list
end

evolution.reload_all_players = function()
  local package_index = evolution.current_package()
  evolution.clear_all_players_above(package_index)
  for _, player in pairs(game.forces.player.players) do
    evolution.set_player_package(player,package_index)
  end
  global.current_level = package_index
end

evolution.set_evo_to_package = function(package_index)
  local package = evolution.levels[package_index]
  if package then
    evolution.clear_all_players_above(package_index)
    game.forces.enemy.evolution_factor = package.threshold / 100
    for _, player in pairs(game.forces.player.players) do
      evolution.set_player_package(player,package_index)
    end
    global.current_level = package_index
    return true
  end
  return false
end

evolution.set_player_package = function(player,package_index)
  local was_changed = false
  local reloaded = false
  for index = 1, package_index do
    local package = evolution.levels[index]
    for _, tech in pairs(package.technology) do
      if game.forces.player.technologies[tech] then
        local force_tech = game.forces.player.technologies[tech]
        if force_tech.enabled == false then
          force_tech.enabled = true
          force_tech.researched = true
          was_changed = true
        end
      else
        print("Couldnt find technology: "..tech)
      end
    end
    
    for _, item in pairs(package.inventory) do
      if game.item_prototypes[item.name] then
        local current_count = player.get_item_count(item.name) 
        if current_count < item.count then
          player.insert({name=item.name,count=item.count-current_count})
          reloaded = true
        end
      else
        print("Couldnt find item: "..item.name)
      end
    end
  end
  
  if was_changed then
    player.print(evolution.levels[package_index].message)
  end
  
  if reloaded then
    player.print("Loadout refilled")
  end
end

return evolution