----------------------------------------------------------------------------
--CoronaSDK ver.1202までと、ver.2076からで表示時のオブジェクトの原点座標が異なります。
----------------------------------------------------------------------------

--[[
local rect = display.newRect( 50, 50, 100, 100 )

local function mR( event )
	rect.x = rect.x + 1
end

Runtime:addEventListener("enterFrame", mR )
--]]

local yWheel = display.newImage( "yWheel.png", 50, 50 )
yWheel.blendMode = "add"

local bWheel = display.newImage( "bWheel.png", 150, 50 )
bWheel.blendMode = "add"

local function wRot( event )
	yWheel.rotation = yWheel.rotation - 1
	bWheel.rotation = bWheel.rotation + 2
	
end

Runtime:addEventListener("enterFrame", wRot )
