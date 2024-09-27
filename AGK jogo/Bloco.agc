Bloco:
//bloco direita


LoadImage ( 1, "blocodireito.png" )
CreateSprite(1,1)
SetSpriteSize(1,61,10)

blocox=GetVirtualWidth()/2+30 - GetspriteWidth(1)/2
blocoy=GetVirtualHeight()-100 - GetspriteHeight(1)


SetSpritePosition(1,blocox,blocoy)

//bloco esquerda
LoadImage ( 7, "blocoesquerdo1.png" )



CreateSprite(7,7)
SetSpriteSize(7,61,10)

blocox2=GetVirtualWidth()/2-30- GetspriteWidth(7)/2
blocoy2=GetVirtualHeight()-100 - GetspriteHeight(7)


SetSpritePosition(7,blocox2,blocoy2)

return
