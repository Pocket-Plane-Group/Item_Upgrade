EXTEND_BOTTOM BOTSMITH 4
	IF ~PartyHasItem("blun18")~ THEN GOTO XO#ItemUp00
END
  
APPEND BOTSMITH
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @567850
		IF ~PartyHasItem("blun18")
			OR(2)
				!PartyHasItem("scrl8o")
				!PartyHasItem("potn25")~ THEN GOTO XO#ItemUp01
		IF ~PartyHasItem("blun18")
			PartyHasItem("scrl8o")
			PartyHasItem("potn25")~ THEN GOTO XO#ItemUp02
	END
  
	IF ~~ THEN BEGIN XO#ItemUp01 SAY @5678850
		IF ~~ THEN GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp02 SAY @5678950
		IF ~PartyGoldLT(15000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(14999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",11)
											 		 SetGlobal("ImpForgeStuff","GLOBAL",1)
													 SetGlobal("XO#TOBCraft","GLOBAL",1)
													 TakePartyGold(15000)
													 DestroyGold(15000)
													 TakePartyItemNum("blun18",1)
													 DestroyItem("blun18")
													 TakePartyItemNum("scrl8o",1)
													 DestroyItem("scrl8o")
													 TakePartyItemNum("potn25",1)
													 DestroyItem("potn25")~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @5678
		COPY_TRANS BOTSMITH 4
	END
END