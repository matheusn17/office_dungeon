--state_manager = require("./../libs/state_manager/state_manager")

function love.load()
end

function love.update(dt)
end

function love.draw()
  love.graphics.rectangle("fill", 10, 10, 100, 100)
end

function love.keyreleased(k)
  if k == "d" then
    state_manager:loadState("level_1")
  end
end
