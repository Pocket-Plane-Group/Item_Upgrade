EXTEND_BOTTOM BOTSMITH 4
	IF ~PartyHasItem("misc3e")~ THEN GOTO XO#ItemUp00
END
  
APPEND BOTSMITH
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @567896
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
  
	IF ~~ THEN BEGIN XO#ItemUp01 SAY @5678896
		IF ~~ THEN GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp02 SAY @5678996
		IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(4999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",40)
													 SetGlobal("ImpForgeStuff","GLOBAL",1)
													 SetGlobal("XO#TOBCraft","GLOBAL",1)
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
							 						 DestroyItem("dagg16")~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @5678
		COPY_TRANS BOTSMITH 4
	END
END