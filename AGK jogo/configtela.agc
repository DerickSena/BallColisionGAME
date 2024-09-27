configtela:

SetWindowSize( 768, 768, 0 )
SetWindowAllowResize( 1 ) // allow the user to resize the window

SetVirtualResolution ( 768, 768 ) // doesn't have to match the window
SetOrientationAllowed( 1, 1, 1, 1 ) // allow both portrait and landscape on mobile devices
SetSyncRate( 40, 0 ) // 30fps instead of 60 to save battery
SetScissor( 0,0,0,0 ) // use the maximum available screen space, no black borders
UseNewDefaultFonts( 1 ) // since version 2.0.22 we can use nicer default fonts
SetRawMouseVisible( 1 )
FontID = 1 : LoadFont( FontID, "fonts/neuropol x rg.ttf" )
SetPrintFont( FontID )
return




