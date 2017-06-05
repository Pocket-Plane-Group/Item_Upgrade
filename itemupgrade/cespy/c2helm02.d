EXTEND_BOTTOM BOTSMITH 4
	IF ~PartyHasItem("helm06")~ THEN GOTO XO#ItemUp00
END
  
APPEND BOTSMITH
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @567860
		IF ~PartyHasItem("helm06")
			NumItemsPartyLT("misc9y",2)~ THEN GOTO XO#ItemUp01
		IF ~PartyHasItem("helm06")
			NumItemsPartyGT("misc9y",1)~ THEN GOTO XO#ItemUp02
	END
  
	IF ~~ THEN BEGIN XO#ItemUp01 SAY @5678860
		IF ~~ THEN GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp02 SAY @5678960
		IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",18)
											 		 SetGlobal("ImpForgeStuff","GLOBAL",1)
													 SetGlobal("XO#TOBCraft","GLOBAL",1)
													 TakePartyGold(10000)
													 DestroyGold(10000)
													 TakePartyItemNum("helm06",1)
													 DestroyItem("helm06")
													 TakePartyItemNum("misc9y",1)
													 DestroyItem("misc9y")
													 TakePartyItemNum("misc9y",1)
													 DestroyItem("misc9y")~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @5678
		COPY_TRANS BOTSMITH 4
	END
END