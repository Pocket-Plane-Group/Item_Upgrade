EXTEND_BOTTOM WSMITH01 13
	IF ~PartyHasItem("npchan")~ THEN GOTO XO#ItemUp00
END
  
APPEND WSMITH01
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @123454
		IF ~PartyHasItem("npchan")
			OR(2)
				!PartyHasItem("leat19")
				!PartyHasItem("scrl07")~ THEN GOTO XO#ItemUp01
		IF ~PartyHasItem("npchan")
			PartyHasItem("leat19")
			PartyHasItem("scrl07")~ THEN GOTO XO#ItemUp02
	END
  
	IF ~~ THEN BEGIN XO#ItemUp01 SAY @1234854
		IF ~~ THEN GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp02 SAY @1234954
		IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",13)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(10000)
													 DestroyGold(10000)
													 TakePartyItemNum("npchan",1)
													 DestroyItem("npchan")
													 TakePartyItemNum("leat19",1)
													 DestroyItem("leat19")
													 TakePartyItemNum("scrl07",1)
													 DestroyItem("scrl07")~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @1234
		COPY_TRANS WSMITH01 13
	END
END