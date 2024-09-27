//BACKGROUND
CreateSprite (12, LoadImage ( "background.jpg" ))

//declaracao de variavel
blocox as float
blocoy as float
blocox=0
blocoy=0
blocox2 as float
blocoy2 as float
blocox2=0
blocoy2=0
blocox3 as float
blocoy3 as float
blocox3=0
blocoy3=0
gameover = 1
tempoDeJogo as integer
blocoVivos = 900
nomePlayer as string 
#include "menuprincipal.agc"
#include "musica.agc"
#include "BlocoMove.agc"
#include "Bloco.agc"
#include "configtela.agc"
gosub musica
gosub configtela

//bolinha
LoadImage ( 2, "ball.png" )
createsprite(2,2)
setspritesize(2,10,10)

//esquerda
LoadImage ( 4, "barralat.png" )
createsprite(4,4)
setspritesize(4,0,768)

//direita
LoadImage ( 6, "barralat.png" )
createsprite(6,6)
setspritesize(6,0,768)
SetSpritePosition(6,758,0)

//superior
LoadImage ( 5, "barrasup.png" )
createsprite(5,5)
setspritesize(5,768,0)

//inferior
LoadImage ( 21, "barrasup.png" )
createsprite(21,21)
setspritesize(21,768,0)
SetSpritePosition(21,0,768)

//blocos verdes
LoadImage ( 10, "blocoverdevert.png" )
CreateSprite(10, 10)
posx=50
posy=50
SetSpritePosition(10,posx,posy)


//blocos verdes
LoadImage ( 30, "blocoverdehorii.png" )
CreateSprite(30, 30)
posx2=49
posy2=50
SetSpritePosition(30,posx2,posy2)


for t=0 to 20
	for y = 200 to 245
		if(t>0)
			y=y+t*56
		endif
		CloneSprite(y,10)
		SetSpritePhysicsOn( y, 1 )
		SetSpritePosition(y,posx,posy)
		posx=posx+15
		if(t>0)
			y=y-t*56
		endif
	next y
	
	posy=posy+16
	posx=50
	
	
next t

for i=0 to 20
	for j = 6000 to 6045
		if(i>0)
			j=j+i*56
		endif
		CloneSprite(j,30)
		SetSpritePosition(j,posx2,posy2)
		posx2=posx2+15
		if(i>0)
			j=j-i*56
		endif
	next j
	
	posy2=posy2+16
	posx2=49
	
	
next i



record as integer
record = 900
bolinhax as float 
bolinhay as float 
bolinhax = 0
bolinhay = 6

   
   
SetSpritePosition ( 2, GetVirtualWidth()/2,GetVirtualHeight()/2 )

gosub Bloco





do	
	
		
	if gameover=1
		
		Gosub menuprincipal
		blocosVivos=900
		
	endif
	
	if GetSpriteCollision(2,21) = 1
		gameover=1
		blocosVivos=1100
		tempoDeJogo=0
	endif
	
	if blocoVivos<record
		record=blocoVivos
	endif
	
	if record=0
		CreateSprite (28, LoadImage ( "ganhou.png" ))
		setspritesize(28,768,768)
		SetSpriteVisible(28,1)
	endif
	
	
	SetSpritePosition(2,getspritex(2)+bolinhax,getspritey(2)+bolinhay)
	
	
	for t=0 to 20
		for y = 200 to 245
		
			if(t>0)
				y=y+t*56
			endif
			
			if GetSpriteCollision(y,2)
				DeleteSprite(y)
				DeleteSprite(y+5800)
				bolinhay=bolinhay*-1
				blocoVivos=blocoVivos-1
			endif
			
			
			if(t>0)
				y=y-t*56
			endif
			
		next y
	
		posy=posy+12
		posx=50
	

		
	next t
	
	for i=0 to 20
		for j = 6000 to 6045
			
			if(i>0)
				j=j+i*56
			endif
			
			if GetSpriteCollision(j,2)
				DeleteSprite(j)
				DeleteSprite(j-5800)
				bolinhax=bolinhax*-1
				blocoVivos=blocoVivos-1
			endif
			
			if(i>0)
				j=j-i*56
			endif
			
		next j
	
		posy2=posy2+12
		posx2=50
	

		
	next i
	
		
	
	//bate na plataforma direita
	if GetSpriteCollision(2,1) = 1
	   bolinhay=bolinhay*-1 
	   bolinhax=6
	   SetSpritePosition(2,getspritex(2),getspritey(2)-3)
	endif
	//bate na plataforma esquerda
	if GetSpriteCollision(2,7) = 1
	   bolinhay=bolinhay*-1 
	   bolinhax=-6
	   SetSpritePosition(2,getspritex(2),getspritey(2)-2)
	//bate na plataforma do meio
	endif
	if GetSpriteCollision(2,8) = 1
	   bolinhay=bolinhay*-1 
	   SetSpritePosition(2,getspritex(2),getspritey(2)-2)
	endif
   
	//bate na esquerda
	if GetSpriteCollision(2,4)= 1
	   bolinhax=bolinhax*-1
	endif
	//bate encima
	if GetSpriteCollision(2,5)= 1
	   bolinhay=bolinhay*-1
	   
	endif
	//bate na direita
	if GetSpriteCollision(2,6)= 1
	   bolinhax=bolinhax*-1
	endif
	
	
   
	gosub BlocoMove
	
	
    printc("Blocos Vivos  ")
	print(blocoVivos)
	
	printc(tempoDeJogo/40)
	printc("    S  ")
	
	printc("                                                         RECORD:")
	printc(record)
	
	if(tempoDeJogo>-1)
		
		inc tempoDeJogo, 1
		
	endif
	
	
	
   
   
	Sync()
loop
