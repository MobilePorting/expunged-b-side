function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'god2bg', -500, -300);
	setLuaSpriteScrollFactor('stageback', 0.5, 0.5);

	addLuaSprite('stageback', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end