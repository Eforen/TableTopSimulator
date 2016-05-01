local lastPause = 0
local wasPaused = false

function update ()
    if wasPaused ~= self.Clock.paused then
        --print("time is: " .. os.clock())
        if self.Clock.getValue() == 0 or os.clock() - lastPause < 0.5 then
            if (not self.Clock.paused) and (os.clock() - lastPause < 0.5) then
                self.Clock.pauseStart()
            end
            self.Clock.setValue(60)
        end
        lastPause = os.clock()
    end
    wasPaused = self.Clock.paused
end
