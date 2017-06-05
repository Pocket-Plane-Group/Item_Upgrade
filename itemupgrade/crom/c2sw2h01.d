EXTEND_BOTTOM WSMITH01 13
	IF ~PartyHasItem("sw2h14")~ THEN GOTO XO#ItemUp00
END
  
APPEND WSMITH01
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @123474
		IF ~PartyHasItem("sw2h14") 
			!PartyHasItem("misc9x")~ THEN GOTO XO#ItemUp01
		IF ~PartyHasItem("sw2h14")
            PartyHasItem("misc9x")~ THEN GOTO XO#ItemUp02
	END
  
	IF ~~ THEN BEGIN XO#ItemUp01 SAY @1234874
		IF ~~ THEN GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp02 SAY @1234974
		IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(19999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",31)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(20000)
													 DestroyGold(20000)
													 TakePartyItemNum("sw2h14",1)
													 DestroyItem("sw2h14")
													 TakePartyItemNum("misc9x",1)
													 DestroyItem("misc9x")~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END
	
	IF ~~ THEN BEGIN XO#NoItemUp SAY @1234
		COPY_TRANS WSMITH01 13
	END
END