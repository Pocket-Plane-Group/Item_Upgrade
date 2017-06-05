EXTEND_BOTTOM WSMITH01 13
	IF ~PartyHasItem("shld17")~ THEN GOTO XO#ItemUp00
END
  
APPEND WSMITH01
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @123476
		IF ~PartyHasItem("shld17")
			OR(2)
				!PartyHasItem("key23")
				NumItemsPartyLT("misc18",5)~ THEN GOTO XO#ItemUp01
		IF ~PartyHasItem("shld17")
			PartyHasItem("key23")
			NumItemsPartyGT("misc18",4)~ THEN GOTO XO#ItemUp02
	END
  
	IF ~~ THEN BEGIN XO#ItemUp01 SAY @1234876
		IF ~~ THEN GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp02 SAY @1234976
		IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",33)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
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
													 DestroyItem("misc18")~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @1234
		COPY_TRANS WSMITH01 13
	END
END