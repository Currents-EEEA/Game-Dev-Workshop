
Character = Class{}

local GRAVITY = 20

function Character:init()
    -- load Character image from disk and assign its width and height
    self.image = love.graphics.newImage('character.png')
    self.width = self.image:getWidth()
    self.height = self.image:getHeight()

    -- position Character in the middle of the screen
    self.x = VIRTUAL_WIDTH / 2 - (self.width / 2)
    self.y = VIRTUAL_HEIGHT / 2 - (self.height / 2)

    -- Y velocity; gravity
    self.dy = 0
end

function Character:update(dt)
    -- apply gravity to velocity
    self.dy = self.dy + GRAVITY * dt

    -- add a sudden burst of negative gravity if we hit space
    if love.keyboard.wasPressed('space') then
        self.dy = -5
    end

    -- apply current velocity to Y position
    self.y = self.y + self.dy
end

function Character:render()
    love.graphics.draw(self.image, self.x, self.y)
end