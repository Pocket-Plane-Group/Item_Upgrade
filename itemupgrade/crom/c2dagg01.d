EXTEND_BOTTOM WSMITH01 13
	IF ~OR(2)
			PartyHasItem("dagg14")
			PartyHasItem("dagg13")~ THEN GOTO XO#ItemUp00
END
  
APPEND WSMITH01
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @123475
		IF ~OR(3)
				!PartyHasItem("dagg14")
				!PartyHasItem("dagg13")
			NumItemsPartyLT("potn36",4)~ THEN GOTO XO#ItemUp01
		IF ~PartyHasItem("dagg14")
			PartyHasItem("dagg13")
			NumItemsPartyGT("potn36",3)~ THEN GOTO XO#ItemUp02
	END
  
	IF ~~ THEN BEGIN XO#ItemUp01 SAY @1234875
		IF ~~ THEN GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp02 SAY @1234975
		IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(19999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",32)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(20000)
													 DestroyGold(20000)
													 TakePartyItemNum("dagg14",1)
													 DestroyItem("dagg14")
													 TakePartyItemNum("dagg13",1)
													 DestroyItem("dagg13")
													 TakePartyItemNum("potn36",1)
													 DestroyItem("potn36")
													 TakePartyItemNum("potn36",1)
													 DestroyItem("potn36")
													 TakePartyItemNum("potn36",1)
													 DestroyItem("potn36")
													 TakePartyItemNum("potn36",1)
													 DestroyItem("potn36")~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @1234
		COPY_TRANS WSMITH01 13
	END
END