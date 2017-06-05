EXTEND_BOTTOM BOTSMITH 4
	IF ~PartyHasItem("npplat")~ THEN GOTO XO#ItemUp00
END

APPEND BOTSMITH
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @567862
		IF ~PartyHasItem("npplat")
			!PartyHasItem("plat16")~ THEN GOTO XO#ItemUp01
		IF ~PartyHasItem("npplat")
			PartyHasItem("plat16")~ THEN GOTO XO#ItemUp02
	END

	IF ~~ THEN BEGIN XO#ItemUp01 SAY @5678862
		IF ~~ THEN GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#ItemUp02 SAY @5678962
		IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(19999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",20)
											 		 SetGlobal("ImpForgeStuff","GLOBAL",1)
													 SetGlobal("XO#TOBCraft","GLOBAL",1)
													 TakePartyGold(20000)
													 DestroyGold(20000)
													 TakePartyItemNum("npplat",1)
													 DestroyItem("npplat")
													 TakePartyItemNum("plat16",1)
													 DestroyItem("plat16")~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @5678
		COPY_TRANS BOTSMITH 4
	END
END