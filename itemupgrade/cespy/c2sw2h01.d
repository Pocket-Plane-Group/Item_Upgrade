EXTEND_BOTTOM BOTSMITH 4
	IF ~PartyHasItem("sw2h14")~ THEN GOTO XO#ItemUp00
END
  
APPEND BOTSMITH
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @567874
		IF ~PartyHasItem("sw2h14") 
			!PartyHasItem("misc9x")~ THEN GOTO XO#ItemUp01
		IF ~PartyHasItem("sw2h14")
            PartyHasItem("misc9x")~ THEN GOTO XO#ItemUp02
	END
  
	IF ~~ THEN BEGIN XO#ItemUp01 SAY @5678874
		IF ~~ THEN GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp02 SAY @5678974
		IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(19999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",31)
											 		 SetGlobal("ImpForgeStuff","GLOBAL",1)
													 SetGlobal("XO#TOBCraft","GLOBAL",1)
													 TakePartyGold(20000)
													 DestroyGold(20000)
													 TakePartyItemNum("sw2h14",1)
													 DestroyItem("sw2h14")
													 TakePartyItemNum("misc9x",1)
													 DestroyItem("misc9x")~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @5678
		COPY_TRANS BOTSMITH 4
	END
END