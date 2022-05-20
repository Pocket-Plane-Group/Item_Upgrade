EXTEND_BOTTOM WSMITH01 13
	IF ~PartyHasItem("sw1h52")~ THEN GOTO XO#ItemUp00
END
  
APPEND WSMITH01
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @123479
		IF ~~ THEN GOTO XO#ItemUp01
		IF ~PartyHasItem("sw1h52")
			PartyHasItem("sw1h23")
			PartyHasItem("sw1h35")~ THEN GOTO XO#ItemUp02
		IF ~PartyHasItem("sw1h52")
			PartyHasItem("bdsw1h23")
			PartyHasItem("sw1h35")~ THEN GOTO XO#ItemUp03
	END
  
	IF ~~ THEN BEGIN XO#ItemUp01 SAY @1234879
		IF ~~ THEN GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp02 SAY @1234979
		IF ~PartyGoldLT(15000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(14999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",36)
													 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(15000)
													 DestroyGold(15000)
													 TakePartyItemNum("sw1h52",1)
													 DestroyItem("sw1h52")
													 TakePartyItemNum("sw1h23",1)
													 DestroyItem("sw1h23")
													 TakePartyItemNum("sw1h35",1)
													 DestroyItem("sw1h35")~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp03 SAY @1234979
		IF ~PartyGoldLT(15000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(14999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",36)
													 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(15000)
													 DestroyGold(15000)
													 TakePartyItemNum("sw1h52",1)
													 DestroyItem("sw1h52")
													 TakePartyItemNum("bdsw1h23",1)
													 DestroyItem("bdsw1h23")
													 TakePartyItemNum("sw1h35",1)
													 DestroyItem("sw1h35")~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @1234
		COPY_TRANS WSMITH01 13
	END
END