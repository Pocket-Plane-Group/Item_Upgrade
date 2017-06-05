EXTEND_BOTTOM BOTSMITH 4
	IF ~PartyHasItem("shld17")~ THEN GOTO XO#ItemUp00
END
  
APPEND BOTSMITH
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @567885
		IF ~PartyHasItem("shld17")
			OR(2)
				!PartyHasItem("key23")
				NumItemsPartyLT("misc18",5)~ THEN GOTO XO#ItemUp01
		IF ~PartyHasItem("shld17")
			PartyHasItem("key23")
			NumItemsPartyGT("misc18",4)~ THEN GOTO XO#ItemUp02
	END
  
	IF ~~ THEN BEGIN XO#ItemUp01 SAY @5678885
		IF ~~ THEN GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp02 SAY @5678985
		IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",33)
											 		 SetGlobal("ImpForgeStuff","GLOBAL",1)
													 SetGlobal("XO#TOBCraft","GLOBAL",1)
													 TakePartyGold(10000)
													 DestroyGold(10000)
													 TakePartyItemNum("shld17",1)
													 DestroyItem("shld17")
													 TakePartyItemNum("key23",1)
													 DestroyItem("key23")
													 TakePartyItemNum("misc18",1)
													 DestroyItem("misc18")
													 TakePartyItemNum("misc18",1)
													 DestroyItem("misc18")
													 TakePartyItemNum("misc18",1)
													 DestroyItem("misc18")
													 TakePartyItemNum("misc18",1)
													 DestroyItem("misc18")
													 TakePartyItemNum("misc18",1)
													 DestroyItem("misc18")~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @5678
		COPY_TRANS BOTSMITH 4
	END
END