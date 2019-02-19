display.setDefault( "background", 100/255, 0, 250/255 )

--event listener and text listener
local answerTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 200, 300, 45 )
answerTextField.id = "answer textField"

local enterButton = display.newImageRect( "./assets/enterButton.png", 300, 120 )
enterButton.x = display.contentCenterX
enterButton.y = display.contentCenterY
enterButton.id = "enter button"
 
local function enterButtonTouch( event )
    -- it is not perfect, but we will make it better soon
    print( answerTextField.text )

    return true
end

enterButton:addEventListener( "touch", enterButtonTouch )
