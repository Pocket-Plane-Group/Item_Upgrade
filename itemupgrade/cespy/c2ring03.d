EXTEND_BOTTOM BOTSMITH 4
	IF ~OR(3) 
			PartyHasItem("ring27") 
            PartyHasItem("ring28") 
            PartyHasItem("ring29")~ THEN GOTO XO#ItemUp00
END
  
APPEND BOTSMITH
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @567842
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
  
	IF ~~ THEN BEGIN XO#ItemUp01 SAY @5678842
		IF ~~ THEN GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp02 SAY @5678942
		IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(19999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",3)
											 		 SetGlobal("ImpForgeStuff","GLOBAL",1)
													 SetGlobal("XO#TOBCraft","GLOBAL",1)
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
													 DestroyItem("scrl15")~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @5678
		COPY_TRANS BOTSMITH 4
	END
END