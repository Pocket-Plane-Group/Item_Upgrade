EXTEND_BOTTOM WSMITH01 13
	IF ~PartyHasItem("helm06")~ THEN GOTO XO#ItemUp00
END
  
APPEND WSMITH01
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @123460
		IF ~PartyHasItem("helm06")
			NumItemsPartyLT("misc9y",2)~ THEN GOTO XO#ItemUp01
		IF ~PartyHasItem("helm06")
			NumItemsPartyGT("misc9y",1)~ THEN GOTO XO#ItemUp02
	END
  
	IF ~~ THEN BEGIN XO#ItemUp01 SAY @1234860
		IF ~~ THEN GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp02 SAY @1234960
		IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",18)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(10000)
													 DestroyGold(10000)
													 TakePartyItemNum("helm06",1)
													 DestroyItem("helm06")
													 TakePartyItemNum("misc9y",1)
													 DestroyItem("misc9y")
													 TakePartyItemNum("misc9y",1)
													 DestroyItem("misc9y")~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @1234
		COPY_TRANS WSMITH01 13
	END
END