--state_manager = require("./../libs/state_manager/state_manager")

function love.load()
end

function love.update(dt)
end

function love.draw()
  love.graphics.rectangle("line", 10, 10, 100, 100)
end

function love.keyreleased(k)
  if k == "a" then
    state_manager:loadState("menu")
  end
end
