EXTEND_BOTTOM BOTSMITH 4
	IF ~PartyHasItem("helm04")~ THEN GOTO XO#ItemUp00
END
  
APPEND BOTSMITH
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @567859
		IF ~PartyHasItem("helm04")
			OR(2)
				!PartyHasItem("helm06")
				NumItemsPartyLT("misc36",4)~ THEN GOTO XO#ItemUp01
		IF ~PartyHasItem("helm04")
			PartyHasItem("helm06")
			NumItemsPartyGT("misc36",3)~ THEN GOTO XO#ItemUp02
	END
  
	IF ~~ THEN BEGIN XO#ItemUp01 SAY @5678859
		IF ~~ THEN GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp02 SAY @5678959
		IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",17)
											 		 SetGlobal("ImpForgeStuff","GLOBAL",1)
													 SetGlobal("XO#TOBCraft","GLOBAL",1)
													 TakePartyGold(10000)
													 DestroyGold(10000)
													 TakePartyItemNum("helm04",1)
													 DestroyItem("helm04")
													 TakePartyItemNum("helm06",1)
													 DestroyItem("helm06")
													 TakePartyItemNum("misc36",1)
													 DestroyItem("misc36")
													 TakePartyItemNum("misc36",1)
													 DestroyItem("misc36")
													 TakePartyItemNum("misc36",1)
													 DestroyItem("misc36")
													 TakePartyItemNum("misc36",1)
													 DestroyItem("misc36")~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @5678
		COPY_TRANS BOTSMITH 4
	END
END