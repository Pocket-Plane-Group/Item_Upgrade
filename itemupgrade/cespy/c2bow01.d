EXTEND_BOTTOM BOTSMITH 4
	IF ~PartyHasItem("bow10")~ THEN GOTO XO#ItemUp00
END
  
APPEND BOTSMITH
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @567851
		IF ~PartyHasItem("bow10")
			PartyHasItem("bow19b")
			PartyHasItem("potn41")
			NumItemsPartyGT("amul12",3)~ THEN GOTO XO#ItemUp02
		IF ~PartyHasItem("bow10")
			PartyHasItem("compon10")
			PartyHasItem("potn41")
			NumItemsPartyGT("amul12",3)~ THEN GOTO XO#ItemUp03
		IF ~PartyHasItem("bow10")
			!PartyHasItem("compon10")
			OR(3)
				!PartyHasItem("bow19b")
				!PartyHasItem("potn41")
				NumItemsPartyLT("amul12",4)~ THEN GOTO XO#ItemUp01
		IF ~PartyHasItem("bow10")
			!PartyHasItem("bow19b")
			OR(3)
				!PartyHasItem("compon10")
				!PartyHasItem("potn41")
				NumItemsPartyLT("amul12",4)~ THEN GOTO XO#ItemUp01
	END
  
	IF ~~ THEN BEGIN XO#ItemUp01 SAY @5678851
		IF ~~ THEN GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp02 SAY @5678951
		IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
		IF ~~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",12)
									SetGlobal("ImpForgeStuff","GLOBAL",1)
									SetGlobal("XO#TOBCraft","GLOBAL",1)
									TakePartyItemNum("bow10",1)
									DestroyItem("bow10")
									TakePartyItemNum("bow19b",1)
									DestroyItem("bow19b")
									TakePartyItemNum("potn41",1)
									DestroyItem("potn41")
									TakePartyItemNum("amul12",1)
									DestroyItem("amul12")
									TakePartyItemNum("amul12",1)
									DestroyItem("amul12")
									TakePartyItemNum("amul12",1)
									DestroyItem("amul12")
									TakePartyItemNum("amul12",1)
									DestroyItem("amul12")~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp03 SAY @5678751
		IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
		IF ~~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",12)
									SetGlobal("ImpForgeStuff","GLOBAL",1)
									SetGlobal("XO#TOBCraft","GLOBAL",1)
									TakePartyItemNum("bow10",1)
									DestroyItem("bow10")
									TakePartyItemNum("compon10",1)
									DestroyItem("compon10")
									TakePartyItemNum("potn41",1)
									DestroyItem("potn41")
									TakePartyItemNum("amul12",1)
									DestroyItem("amul12")
									TakePartyItemNum("amul12",1)
									DestroyItem("amul12")
									TakePartyItemNum("amul12",1)
									DestroyItem("amul12")
									TakePartyItemNum("amul12",1)
									DestroyItem("amul12")~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @5678
		COPY_TRANS BOTSMITH 4
	END
END