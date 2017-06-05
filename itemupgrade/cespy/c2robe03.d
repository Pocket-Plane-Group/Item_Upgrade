EXTEND_BOTTOM BOTSMITH 4
	IF ~PartyHasItem("clck17")~ THEN GOTO XO#ItemUp00
END

APPEND BOTSMITH
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @567855
		IF ~~ THEN GOTO XO#ItemUp01
		IF ~PartyHasItem("clck17")
			PartyHasItem("clck01")
			PartyHasItem("scrl7u")
			PartyHasItem("scrl5k")~ THEN GOTO XO#ItemUp02
		IF ~PartyHasItem("clck17")
			PartyHasItem("cdpp8")
			PartyHasItem("scrl7u")
			PartyHasItem("scrl5k")~ THEN GOTO XO#ItemUp03
		IF ~PartyHasItem("clck17")
			PartyHasItem("c!pp8")
			PartyHasItem("scrl7u")
			PartyHasItem("scrl5k")~ THEN GOTO XO#ItemUp04
	END

	IF ~~ THEN BEGIN XO#ItemUp01 SAY @5678855
		IF ~~ THEN GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#ItemUp02 SAY @5678955
		IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(19999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",16)
											 		 SetGlobal("ImpForgeStuff","GLOBAL",1)
													 SetGlobal("XO#TOBCraft","GLOBAL",1)
													 TakePartyGold(20000)
													 DestroyGold(20000)
													 TakePartyItemNum("clck17",1)
													 DestroyItem("clck17")
													 TakePartyItemNum("clck01",1)
													 DestroyItem("clck01")
													 TakePartyItemNum("scrl7u",1)
													 DestroyItem("scrl7u")
													 TakePartyItemNum("scrl5k",1)
													 DestroyItem("scrl5k")~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#ItemUp03 SAY @5678955
		IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(19999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",16)
											 		 SetGlobal("ImpForgeStuff","GLOBAL",1)
													 SetGlobal("XO#TOBCraft","GLOBAL",1)
													 TakePartyGold(20000)
													 DestroyGold(20000)
													 TakePartyItemNum("clck17",1)
													 DestroyItem("clck17")
													 TakePartyItemNum("cdpp8",1)
													 DestroyItem("cdpp8")
													 TakePartyItemNum("scrl7u",1)
													 DestroyItem("scrl7u")
													 TakePartyItemNum("scrl5k",1)
													 DestroyItem("scrl5k")~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#ItemUp04 SAY @5678955
		IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(19999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",16)
											 		 SetGlobal("ImpForgeStuff","GLOBAL",1)
													 SetGlobal("XO#TOBCraft","GLOBAL",1)
													 TakePartyGold(20000)
													 DestroyGold(20000)
													 TakePartyItemNum("clck17",1)
													 DestroyItem("clck17")
													 TakePartyItemNum("c!pp8",1)
													 DestroyItem("c!pp8")
													 TakePartyItemNum("scrl7u",1)
													 DestroyItem("scrl7u")
													 TakePartyItemNum("scrl5k",1)
													 DestroyItem("scrl5k")~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @5678
		COPY_TRANS BOTSMITH 4
	END
END