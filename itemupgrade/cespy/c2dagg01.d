EXTEND_BOTTOM BOTSMITH 4
	IF ~OR(2)
			PartyHasItem("dagg14")
			PartyHasItem("dagg13")~ THEN GOTO XO#ItemUp00
END
  
APPEND BOTSMITH
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @567875
		IF ~OR(3)
				!PartyHasItem("dagg14")
				!PartyHasItem("dagg13")
				NumItemsPartyLT("potn36",4)~ THEN GOTO XO#ItemUp01
		IF ~PartyHasItem("dagg14")
			PartyHasItem("dagg13")
			NumItemsPartyGT("potn36",3)~ THEN GOTO XO#ItemUp02
	END
  
	IF ~~ THEN BEGIN XO#ItemUp01 SAY @5678875
		IF ~~ THEN GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp02 SAY @5678975
		IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(19999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",32)
											 		 SetGlobal("ImpForgeStuff","GLOBAL",1)
													 SetGlobal("XO#TOBCraft","GLOBAL",1)
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
													 DestroyItem("potn36")~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @5678
		COPY_TRANS BOTSMITH 4
	END
END