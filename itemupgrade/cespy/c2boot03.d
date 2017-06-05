EXTEND_BOTTOM BOTSMITH 4
	IF ~PartyHasItem("boot04")~ THEN GOTO XO#ItemUp00
END
  
APPEND BOTSMITH
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @567847
		IF ~PartyHasItem("boot04")
			OR(2)
				!PartyHasItem("boot01")
				!PartyHasItem("misc45")~ THEN GOTO XO#ItemUp01
		IF ~PartyHasItem("boot04")
			PartyHasItem("boot01")
			PartyHasItem("misc45")~ THEN GOTO XO#ItemUp02
	END
  
	IF ~~ THEN BEGIN XO#ItemUp01 SAY @5678847
		IF ~~ THEN GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp02 SAY @5678947
		IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",8)
											 		 SetGlobal("ImpForgeStuff","GLOBAL",1)
													 SetGlobal("XO#TOBCraft","GLOBAL",1)
													 TakePartyGold(10000)
													 DestroyGold(10000)
													 TakePartyItemNum("boot04",1)
													 DestroyItem("boot04")
													 TakePartyItemNum("boot01",1)
													 DestroyItem("boot01")
													 TakePartyItemNum("misc45",1)
													 DestroyItem("misc45")~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @5678
		COPY_TRANS BOTSMITH 4
	END
END