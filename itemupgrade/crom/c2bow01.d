EXTEND_BOTTOM WSMITH01 13
	IF ~PartyHasItem("bow10")~ THEN GOTO XO#ItemUp00
END
  
APPEND WSMITH01
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @123451
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
  
	IF ~~ THEN BEGIN XO#ItemUp01 SAY @1234851
		IF ~~ THEN GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp02 SAY @1234951
		IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
		IF ~~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",12)
									SetGlobal("ForgeStuff","GLOBAL",1)
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
									DestroyItem("amul12")~ GOTO 56
	END
  
	IF ~~ THEN BEGIN XO#ItemUp03 SAY @1234751
		IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
		IF ~~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",12)
									SetGlobal("ForgeStuff","GLOBAL",1)
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
									DestroyItem("amul12")~ GOTO 56
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @1234
		COPY_TRANS WSMITH01 13
	END
END