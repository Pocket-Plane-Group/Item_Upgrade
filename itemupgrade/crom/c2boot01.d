EXTEND_BOTTOM WSMITH01 13
	IF ~PartyHasItem("boot02")~ THEN GOTO XO#ItemUp00
END
  
APPEND WSMITH01
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @123444
		IF ~PartyHasItem("boot02")
			OR(2)
				!PartyHasItem("boot01")
				!PartyHasItem("misc45")~ THEN GOTO XO#ItemUp01
		IF ~PartyHasItem("boot02")
			PartyHasItem("boot01")
			PartyHasItem("misc45")~ THEN GOTO XO#ItemUp02
	END
  
	IF ~~ THEN BEGIN XO#ItemUp01 SAY @1234844
		IF ~~ THEN GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp02 SAY @1234944
		IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",5)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(10000)
													 DestroyGold(10000)
													 TakePartyItemNum("boot02",1)
													 DestroyItem("boot02")
													 TakePartyItemNum("boot01",1)
													 DestroyItem("boot01")
													 TakePartyItemNum("misc45",1)
													 DestroyItem("misc45")~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END
	
	IF ~~ THEN BEGIN XO#NoItemUp SAY @1234
		COPY_TRANS WSMITH01 13
	END
END