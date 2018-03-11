local anim8 = require 'anim8'

local image, animation

player = {}  -- Add this below the platform variable
local x=0
local y=0

function love.load()
  image = love.graphics.newImage('Sprites/test.png')
  local g = anim8.newGrid(64,64, 1024,768,  299,101,   2)
  animation = anim8.newAnimation(g(1,'1-3'), 0.1)
end

function love.update(dt)
  animation:update(dt)
  if love.keyboard.isDown('d') then
    x=x+(200 * dt)
  end
  if love.keyboard.isDown('a')then
    x=x-1
  end
end

function love.draw()
  animation:draw(image, x, 200)
end

function love.quit()
  print("Gracias por jugar! Vuelve pronto!")
end
