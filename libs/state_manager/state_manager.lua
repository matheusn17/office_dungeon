state_manager = { }

state_manager.states = {
  -- Put your state files path here
  -- state = "./path/to/state"
}

state_manager.loadState = function (self, _state)
  self.clearLoveCallbacks()
  dofile(self.states[_state])
end

state_manager.loadStateFile = function (self, _state)
  self.clearLoveCallbacks()
  dofile(_state)
end

state_manager.clearState = function (self, _state, collect_garbage)

  self.states[_state] = nil
  
  if collect_garbage then
    collectgarbage("collect")
  end
  
end

state_manager.clearLoveCallbacks = function ()
  for _,v in ipairs{"update","draw", "keyreleased"} do
    love[v] = function () end
  end
end

return state_manager
