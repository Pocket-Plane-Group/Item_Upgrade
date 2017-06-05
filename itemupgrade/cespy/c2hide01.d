EXTEND_BOTTOM BOTSMITH 4
	IF ~PartyHasItem("leat20")~ THEN GOTO XO#ItemUp00
END

APPEND BOTSMITH
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @567861
		IF ~PartyHasItem("leat20")
			!PartyHasItem("scrl8e")~ THEN GOTO XO#ItemUp01
		IF ~PartyHasItem("leat20")
			PartyHasItem("scrl8e")~ THEN GOTO XO#ItemUp02
	END

	IF ~~ THEN BEGIN XO#ItemUp01 SAY @5678861
		IF ~~ THEN GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#ItemUp02 SAY @5678961
		IF ~PartyGoldLT(15000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(14999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",19)
											 		 SetGlobal("ImpForgeStuff","GLOBAL",1)
													 SetGlobal("XO#TOBCraft","GLOBAL",1)
													 TakePartyGold(15000)
													 DestroyGold(15000)
													 TakePartyItemNum("leat20",1)
													 DestroyItem("leat20")
													 TakePartyItemNum("scrl8e",1)
													 DestroyItem("scrl8e")~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @5678
		COPY_TRANS BOTSMITH 4
	END
END