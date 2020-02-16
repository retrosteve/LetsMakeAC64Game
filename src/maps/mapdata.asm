MAPDATA: {

	MAP_1: {
		Level:
			.import binary "../../assets/maps/map_1.bin"

		PlayerSpawns:
			.byte $98,$00,$b8	//Player1  X,XMSB, Y
			.byte $a6,$00,$b8	//Player2

			//Sprite space from Char space (X is  half values)
			//X = cx * 4 + 12
			//Y = cy * 8 + 50
		PipeSpawnX:
			.byte $2c, $94, $1c, $64, $84
		PipeSpawnY:
			.byte $52, $62, $a2, $b2, $92
		PipeStartX:
			.byte $08, $22, $04, $16, $1e
		PipeStartY:
			.byte $00, $00, $13, $13, $13
		PipeLengthAndDirection:	//Upper nibble = 1 if pipes goes down
			.byte $14, $16, $04, $02, $06

		DoorSpawnLoc:
			.byte $16,$02
		SwitchSpawnLoc:
			.byte $20,$04

		EnemyList:
			.byte 1,1,1,1, 2,2,2,2, 1,1,2,2
		__EnemyList:
			.byte 0

		BarUnits:
			.fill [__EnemyList - EnemyList], [[i*56]/[__EnemyList - EnemyList]]
			.byte 56
	}




}