EXTEND_BOTTOM BOTSMITH 4
	IF ~PartyHasItem("npchan")~ THEN GOTO XO#ItemUp00
END
  
APPEND BOTSMITH
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @567854
		IF ~PartyHasItem("npchan")
			OR(2)
				!PartyHasItem("leat19")
				!PartyHasItem("scrl07")~ THEN GOTO XO#ItemUp01
		IF ~PartyHasItem("npchan")
			PartyHasItem("leat19")
			PartyHasItem("scrl07")~ THEN GOTO XO#ItemUp02
	END
  
	IF ~~ THEN BEGIN XO#ItemUp01 SAY @5678854
		IF ~~ THEN GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp02 SAY @5678954
		IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",13)
											 		 SetGlobal("ImpForgeStuff","GLOBAL",1)
													 SetGlobal("XO#TOBCraft","GLOBAL",1)
													 TakePartyGold(10000)
													 DestroyGold(10000)
													 TakePartyItemNum("npchan",1)
													 DestroyItem("npchan")
													 TakePartyItemNum("leat19",1)
													 DestroyItem("leat19")
													 TakePartyItemNum("scrl07",1)
													 DestroyItem("scrl07")~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @5678
		COPY_TRANS BOTSMITH 4
	END
END