
Character = Class{}

function Character:init()
    -- load character  image from disk and assign its width and height
    self.image = love.graphics.newImage('character.png')
    self.width = self.image:getWidth()
    self.height = self.image:getHeight()

    -- position character in the middle of the screen
    self.x = VIRTUAL_WIDTH / 2 - (self.width / 2)
    self.y = VIRTUAL_HEIGHT / 2 - (self.height / 2)
end

function Character:render()
    love.graphics.draw(self.image, self.x, self.y)
end