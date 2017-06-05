EXTEND_BOTTOM WSMITH01 13
	IF ~PartyHasItem("blun22")~ THEN GOTO XO#ItemUp00
END
  
APPEND WSMITH01
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @123448
		IF ~PartyHasItem("blun22")
			!PartyHasItem("blun24")~ THEN GOTO XO#ItemUp01
		IF ~PartyHasItem("blun22")
			PartyHasItem("blun24")~ THEN GOTO XO#ItemUp02
	END
  
	IF ~~ THEN BEGIN XO#ItemUp01 SAY @1234848
		IF ~~ THEN GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp02 SAY @1234948
		IF ~PartyGoldLT(15000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(14999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",9)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(15000)
													 DestroyGold(15000)
													 TakePartyItemNum("blun22",1)
													 DestroyItem("blun22")
													 TakePartyItemNum("blun24",1)
													 DestroyItem("blun24")~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @1234
		COPY_TRANS WSMITH01 13
	END
END