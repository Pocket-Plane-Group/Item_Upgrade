EXTEND_BOTTOM WSMITH01 13
	IF ~PartyHasItem("sw1h31")~ THEN GOTO XO#ItemUp00
END
  
APPEND WSMITH01
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @123469
		IF ~PartyHasItem("sw1h31")
			OR(3)
				NumItemsPartyLT("scrl09",4)
				NumItemsPartyLT("miscau",2)
				NumItemsPartyLT("misc41",2)~ THEN GOTO XO#ItemUp01
		IF ~PartyHasItem("sw1h31")
			NumItemsPartyGT("scrl09",3)
			NumItemsPartyGT("miscau",1)
			NumItemsPartyGT("misc41",1)~ THEN GOTO XO#ItemUp02
	END
  
	IF ~~ THEN BEGIN XO#ItemUp01 SAY @1234869
		IF ~~ THEN GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp02 SAY @1234969
		IF ~PartyGoldLT(15000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(14999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",27)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(15000)
													 DestroyGold(15000)
													 TakePartyItemNum("sw1h31",1)
													 DestroyItem("sw1h31")
													 TakePartyItemNum("scrl09",1)
													 DestroyItem("scrl09")
													 TakePartyItemNum("scrl09",1)
													 DestroyItem("scrl09")
													 TakePartyItemNum("scrl09",1)
													 DestroyItem("scrl09")
													 TakePartyItemNum("scrl09",1)
													 DestroyItem("scrl09")
													 TakePartyItemNum("miscau",1)
													 DestroyItem("miscau")
													 TakePartyItemNum("miscau",1)
													 DestroyItem("miscau")
													 TakePartyItemNum("misc41",1)
													 DestroyItem("misc41")
													 TakePartyItemNum("misc41",1)
													 DestroyItem("misc41")~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @1234
		COPY_TRANS WSMITH01 13
	END
END