EXTEND_BOTTOM WSMITH01 13
	IF ~PartyHasItem("plat06")~ THEN GOTO XO#ItemUp00
END

APPEND WSMITH01
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @123463
		IF ~PartyHasItem("plat06")
			OR(2)
				!PartyHasItem("scrl03")				
				!PartyHasItem("scrl6y")~ THEN GOTO XO#ItemUp01
		IF ~PartyHasItem("plat06")
			PartyHasItem("scrl03")				
			PartyHasItem("scrl6y")~ THEN GOTO XO#ItemUp02
	END

	IF ~~ THEN BEGIN XO#ItemUp01 SAY @1234863
		IF ~~ THEN GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#ItemUp02 SAY @1234963
		IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(4999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",21)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(5000)
													 DestroyGold(5000)
													 TakePartyItemNum("plat06",1)
													 DestroyItem("plat06")
													 TakePartyItemNum("scrl03",1)
													 DestroyItem("scrl03")
													 TakePartyItemNum("scrl6y",1)
													 DestroyItem("scrl6y")~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @1234
		COPY_TRANS WSMITH01 13
	END
END