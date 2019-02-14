EXTEND_BOTTOM BOTSMITH 4
	IF ~PartyHasItem("chan14")~ THEN GOTO XO#ItemUp00
END
  
APPEND BOTSMITH
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @5678100
		IF ~PartyHasItem("chan14")
			OR(3)
				!PartyHasItem("scaler")
				NumItemsPartyLT("misc22",3)
				NumItemsPartyLT("misc16",3)~ THEN GOTO XO#ItemUp01
		IF ~PartyHasItem("chan14")
			PartyHasItem("scaler")
			NumItemsPartyGT("misc22",2)
			NumItemsPartyGT("misc16",2)~ THEN GOTO XO#ItemUp02
	END
  
	IF ~~ THEN BEGIN XO#ItemUp01 SAY @56788100
		IF ~~ THEN GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp02 SAY @56789100
		IF ~PartyGoldLT(25000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(24999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",39)
											 		 SetGlobal("ImpForgeStuff","GLOBAL",1)
													 SetGlobal("XO#TOBCraft","GLOBAL",1)
													 TakePartyGold(25000)
													 DestroyGold(25000)
													 TakePartyItemNum("chan14",1)
													 DestroyItem("chan14")
													 TakePartyItemNum("scaler",1)
													 DestroyItem("scaler")
													 TakePartyItemNum("misc22",1)
													 DestroyItem("misc22")
													 TakePartyItemNum("misc22",1)
													 DestroyItem("misc22")
													 TakePartyItemNum("misc22",1)
													 DestroyItem("misc22")
													 TakePartyItemNum("misc16",1)
													 DestroyItem("misc16")
													 TakePartyItemNum("misc16",1)
													 DestroyItem("misc16")
													 TakePartyItemNum("misc16",1)
													 DestroyItem("misc16")~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @5678
		COPY_TRANS BOTSMITH 4
	END
END