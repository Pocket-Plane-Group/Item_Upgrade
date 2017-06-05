EXTEND_BOTTOM BOTSMITH 4
	IF ~PartyHasItem("plat06")~ THEN GOTO XO#ItemUp00
END

APPEND BOTSMITH
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @567863
		IF ~PartyHasItem("plat06")
			OR(2)
				!PartyHasItem("scrl03")				
				!PartyHasItem("scrl6y")~ THEN GOTO XO#ItemUp01
		IF ~PartyHasItem("plat06")
			PartyHasItem("scrl03")				
			PartyHasItem("scrl6y")~ THEN GOTO XO#ItemUp02
	END

	IF ~~ THEN BEGIN XO#ItemUp01 SAY @5678863
		IF ~~ THEN GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#ItemUp02 SAY @5678963
		IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(4999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",21)
											 		 SetGlobal("ImpForgeStuff","GLOBAL",1)
													 SetGlobal("XO#TOBCraft","GLOBAL",1)
													 TakePartyGold(5000)
													 DestroyGold(5000)
													 TakePartyItemNum("plat06",1)
													 DestroyItem("plat06")
													 TakePartyItemNum("scrl03",1)
													 DestroyItem("scrl03")
													 TakePartyItemNum("scrl6y",1)
													 DestroyItem("scrl6y")~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @5678
		COPY_TRANS BOTSMITH 4
	END
END