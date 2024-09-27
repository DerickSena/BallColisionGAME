BlocoMove:

//blocox 1 = direita
//blocox2 7 = esquerda
//blocox3 8 = meio

if GetRawKeyState(37)
blocox2=blocox2-10
blocox=blocox-10
blocox3=blocox3-10
endif

if GetRawKeyState(39)
blocox=blocox+10
blocox2=blocox2+10
blocox3=blocox3+10
endif



if blocox<61
	blocox=61
endif

if blocox2<0
	blocox2=0
endif

if blocox3<50
	blocox3=50
endif

if blocox>718
	blocox=718
endif

if blocox2>657
	blocox2=657
endif

if blocox3>707
	blocox3=707
endif


SetSpritePosition(1,blocox,blocoy)
SetSpritePosition(7,blocox2,blocoy2)
SetSpritePosition(8,blocox3,blocoy3)

return
