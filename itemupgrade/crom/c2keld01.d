EXTEND_BOTTOM WSMITH01 13
	IF ~PartyHasItem("npplat")~ THEN GOTO XO#ItemUp00
END

APPEND WSMITH01
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @123462
		IF ~PartyHasItem("npplat")
			!PartyHasItem("plat16")~ THEN GOTO XO#ItemUp01
		IF ~PartyHasItem("npplat")
			PartyHasItem("plat16")~ THEN GOTO XO#ItemUp02
	END

	IF ~~ THEN BEGIN XO#ItemUp01 SAY @1234862
		IF ~~ THEN GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#ItemUp02 SAY @1234962
		IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(19999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",20)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(20000)
													 DestroyGold(20000)
													 TakePartyItemNum("npplat",1)
													 DestroyItem("npplat")
													 TakePartyItemNum("plat16",1)
													 DestroyItem("plat16")~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @1234
		COPY_TRANS WSMITH01 13
	END
END