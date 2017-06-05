EXTEND_BOTTOM WSMITH01 13
	IF ~PartyHasItem("misc3e")~ THEN GOTO XO#ItemUp00
END
  
APPEND WSMITH01
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @123496
		IF ~PartyHasItem("misc3e")
			OR(3)
				!PartyHasItem("scrl6r")
				!PartyHasItem("scrl99")
				NumItemsPartyLT("dagg16",5)~ THEN GOTO XO#ItemUp01
		IF ~PartyHasItem("misc3e")
			PartyHasItem("scrl6r")
			PartyHasItem("scrl99")
			NumItemsPartyGT("dagg16",4)~ THEN GOTO XO#ItemUp02
	END
  
	IF ~~ THEN BEGIN XO#ItemUp01 SAY @1234896
		IF ~~ THEN GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp02 SAY @1234996
		IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(4999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",40)
													 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(5000)
													 DestroyGold(5000)
													 TakePartyItemNum("misc3e",1)
													 DestroyItem("misc3e")
													 TakePartyItemNum("scrl6r",1)
													 DestroyItem("scrl6r")
													 TakePartyItemNum("scrl99",1)
													 DestroyItem("scrl99")
													 TakePartyItemNum("dagg16",1)
							 						 DestroyItem("dagg16")
								 				 	 TakePartyItemNum("dagg16",1)
							 				 		 DestroyItem("dagg16")
							 						 TakePartyItemNum("dagg16",1)
							 						 DestroyItem("dagg16")
							 						 TakePartyItemNum("dagg16",1)
							 						 DestroyItem("dagg16")
							 						 TakePartyItemNum("dagg16",1)
							 						 DestroyItem("dagg16")~ GOTO 56
		IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @1234
		COPY_TRANS WSMITH01 13
	END
END