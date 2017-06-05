EXTEND_BOTTOM WSMITH01 13
	IF ~OR(3) 
			PartyHasItem("ring27") 
            PartyHasItem("ring28") 
            PartyHasItem("ring29")~ THEN GOTO XO#ItemUp00
END
  
APPEND WSMITH01
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @123442
		IF ~OR(6)
				!PartyHasItem("ring27") 
				!PartyHasItem("ring28") 
				!PartyHasItem("ring29")
				!PartyHasItem("scrl05")
				!PartyHasItem("scrl06")
				!PartyHasItem("scrl15")~ THEN GOTO XO#ItemUp01
		IF ~PartyHasItem("ring27")
            PartyHasItem("ring28")
            PartyHasItem("ring29")
			PartyHasItem("scrl05")
			PartyHasItem("scrl06")
			PartyHasItem("scrl15")~ THEN GOTO XO#ItemUp02
	END
  
	IF ~~ THEN BEGIN XO#ItemUp01 SAY @1234842
		IF ~~ THEN GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp02 SAY @1234942
		IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(19999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",3)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(20000)
													 DestroyGold(20000)
													 TakePartyItemNum("ring27",1)
													 DestroyItem("ring27")
													 TakePartyItemNum("ring28",1)
													 DestroyItem("ring28")
													 TakePartyItemNum("ring29",1)
													 DestroyItem("ring29")
													 TakePartyItemNum("scrl05",1)
													 DestroyItem("scrl05")
													 TakePartyItemNum("scrl06",1)
													 DestroyItem("scrl06")
													 TakePartyItemNum("scrl15",1)
													 DestroyItem("scrl15")~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @1234
		COPY_TRANS WSMITH01 13
	END
END