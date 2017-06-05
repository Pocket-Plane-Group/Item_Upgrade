EXTEND_BOTTOM BOTSMITH 4
	IF ~PartyHasItem("leat21")~ THEN GOTO XO#ItemUp00
END
  
APPEND BOTSMITH
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @567883
		IF ~PartyHasItem("leat21")
			OR(2)
				!PartyHasItem("amsoul01")
				!PartyHasItem("scrl07")~ THEN GOTO XO#ItemUp01
		IF ~PartyHasItem("leat21")
			PartyHasItem("amsoul01")
			PartyHasItem("scrl07")~ THEN GOTO XO#ItemUp02
	END
  
	IF ~~ THEN BEGIN XO#ItemUp01 SAY @5678883
		IF ~~ THEN GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp02 SAY @5678983
		IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(19999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",47)
											 		 SetGlobal("ImpForgeStuff","GLOBAL",1)
													 SetGlobal("XO#TOBCraft","GLOBAL",1)
													 TakePartyGold(20000)
													 DestroyGold(20000)
													 TakePartyItemNum("leat21",1)
													 DestroyItem("leat21")
													 TakePartyItemNum("amsoul01",1)
													 DestroyItem("amsoul01")
													 TakePartyItemNum("scrl07",1)
													 DestroyItem("scrl07")~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @5678
		COPY_TRANS BOTSMITH 4
	END
END