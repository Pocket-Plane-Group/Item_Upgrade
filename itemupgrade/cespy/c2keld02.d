EXTEND_BOTTOM BOTSMITH 4
	IF ~PartyHasItem("npsw03")~ THEN GOTO XO#ItemUp00
END
  
APPEND BOTSMITH
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @567872
		IF ~PartyHasItem("npsw03")
			OR(3)
				!PartyHasItem("misc6m")
				NumItemsPartyLT("scrl1e",5)
				!Reputation(Player1,20)~ THEN GOTO XO#ItemUp01
		IF ~PartyHasItem("npsw03")
			PartyHasItem("misc6m")
			NumItemsPartyGT("scrl1e",4)
			Reputation(Player1,20)~ THEN GOTO XO#ItemUp02
	END
  
	IF ~~ THEN BEGIN XO#ItemUp01 SAY @5678872
		IF ~~ THEN GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp02 SAY @5678972
		IF ~PartyGoldLT(15000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(14999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",29)
											 		 SetGlobal("ImpForgeStuff","GLOBAL",1)
													 SetGlobal("XO#TOBCraft","GLOBAL",1)
													 TakePartyGold(15000)
													 DestroyGold(15000)
													 TakePartyItemNum("npsw03",1)
													 DestroyItem("npsw03")
													 TakePartyItemNum("misc6m",1)
													 DestroyItem("misc6m")
													 TakePartyItemNum("scrl1e",1)
													 DestroyItem("scrl1e")
													 TakePartyItemNum("scrl1e",1)
													 DestroyItem("scrl1e")
													 TakePartyItemNum("scrl1e",1)
													 DestroyItem("scrl1e")
													 TakePartyItemNum("scrl1e",1)
													 DestroyItem("scrl1e")
													 TakePartyItemNum("scrl1e",1)
													 DestroyItem("scrl1e")~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @5678
		COPY_TRANS BOTSMITH 4
	END
END