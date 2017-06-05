EXTEND_BOTTOM WSMITH01 13
	IF ~PartyHasItem("clck16")~ THEN GOTO XO#ItemUp00
END

APPEND WSMITH01
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @123455
		IF ~~ THEN GOTO XO#ItemUp01
		IF ~PartyHasItem("clck16")
			PartyHasItem("clck01")
			PartyHasItem("scrl7u")
			PartyHasItem("scrl5k")~ THEN GOTO XO#ItemUp02
		IF ~PartyHasItem("clck16")
			PartyHasItem("cdpp8")
			PartyHasItem("scrl7u")
			PartyHasItem("scrl5k")~ THEN GOTO XO#ItemUp03
		IF ~PartyHasItem("clck16")
			PartyHasItem("c!pp8")
			PartyHasItem("scrl7u")
			PartyHasItem("scrl5k")~ THEN GOTO XO#ItemUp04
	END

	IF ~~ THEN BEGIN XO#ItemUp01 SAY @1234855
		IF ~~ THEN GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#ItemUp02 SAY @1234955
		IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(19999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",15)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(20000)
													 DestroyGold(20000)
													 TakePartyItemNum("clck16",1)
													 DestroyItem("clck16")
													 TakePartyItemNum("clck01",1)
													 DestroyItem("clck01")
													 TakePartyItemNum("scrl7u",1)
													 DestroyItem("scrl7u")
													 TakePartyItemNum("scrl5k",1)
													 DestroyItem("scrl5k")~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#ItemUp03 SAY @1234955
		IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(19999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",15)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(20000)
													 DestroyGold(20000)
													 TakePartyItemNum("clck16",1)
													 DestroyItem("clck16")
													 TakePartyItemNum("cdpp8",1)
													 DestroyItem("cdpp8")
													 TakePartyItemNum("scrl7u",1)
													 DestroyItem("scrl7u")
													 TakePartyItemNum("scrl5k",1)
													 DestroyItem("scrl5k")~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#ItemUp04 SAY @1234955
		IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(19999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",15)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(20000)
													 DestroyGold(20000)
													 TakePartyItemNum("clck16",1)
													 DestroyItem("clck16")
													 TakePartyItemNum("c!pp8",1)
													 DestroyItem("c!pp8")
													 TakePartyItemNum("scrl7u",1)
													 DestroyItem("scrl7u")
													 TakePartyItemNum("scrl5k",1)
													 DestroyItem("scrl5k")~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @1234
		COPY_TRANS WSMITH01 13
	END
END