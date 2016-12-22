-- MainWorldScene
-- Lesson 6

-- Created by: Justin Richards
-- Created on: Nov 2014
-- Created for: ICS2O
-- This is the main worlds scene

MainWorldScene = class()

-- variables local to entire file
local mBackButton
local ww1Button
local ww2Button
local ww3Button
local ww4Button


function MainWorldScene:init()

    --sprite("Project:Block Brick")
    mBackButton = Button("Project:Blue Back Circle Button", vec2(WIDTH/20, HEIGHT/1.067))  
    ww1Button = Button("Project:Block Special", vec2(WIDTH/4, HEIGHT/3.5))
    ww2Button = Button("Project:Block Brick", vec2(WIDTH/1.3, HEIGHT/1.3))
    ww3Button = Button("Project:Block Grass", vec2(WIDTH/4, HEIGHT/1.3))
    ww4Button = Button("Project:Block Special Brick", vec2(WIDTH/1.3, HEIGHT/3.5))
    
end
    

function MainWorldScene:draw()
    -- Codea does not automatically call this method

    background(60, 0, 255, 255)
    fill(199, 255, 0, 255)
    stroke(221, 255, 0, 255)
    fontSize(75)
    pushStyle()
 
    mBackButton:draw()
    ww1Button:draw()
    ww2Button:draw()
    ww3Button:draw()
    ww4Button:draw()
    popStyle()
end

function MainWorldScene:touched(touch)
    -- Codea does not automatically call this method
    
    mBackButton:touched(touch)
    ww1Button:touched(touch)
    ww2Button:touched(touch)
    ww3Button:touched(touch)
    ww4Button:touched(touch)
    
    if(mBackButton.selected == true) then
        Scene.Change("mainMenuScene")
    end
end