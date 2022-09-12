state_manager = require("./libs/state_manager/state_manager")

function love.load()
  globals = { }
  
  state_manager.states = {
    -- Put your state files path here
    intro = "./states/intro.lua",
    menu = "./states/menu.lua",
    level_1 = "./states/level_1.lua"
  }  
  
  state_manager:loadState("menu")
  
end
