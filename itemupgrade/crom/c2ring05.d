EXTEND_BOTTOM WSMITH01 13
	IF ~OR(6)
			PartyHasItem("ring41")
			PartyHasItem("cdpp14")
			PartyHasItem("c!pp14")~ THEN GOTO XO#ItemUp00
END
  
APPEND WSMITH01
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @123484
		IF ~~ THEN GOTO XO#ItemUp01
		IF ~PartyHasItem("ring41")
			PartyHasItem("ring31")
			PartyHasItem("misc42")~ THEN GOTO XO#ItemUp02
		IF ~PartyHasItem("cdpp14")
			PartyHasItem("ring31")
			PartyHasItem("misc42")~ THEN GOTO XO#ItemUp03
		IF ~PartyHasItem("c!pp14")
			PartyHasItem("ring31")
			PartyHasItem("misc42")~ THEN GOTO XO#ItemUp04
	END
  
	IF ~~ THEN BEGIN XO#ItemUp01 SAY @1234884
		IF ~~ THEN GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp02 SAY @1234984
		IF ~PartyGoldLT(30000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(29999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",44)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(30000)
													 DestroyGold(30000)
													 TakePartyItemNum("ring41",1)
													 DestroyItem("ring41")
													 TakePartyItemNum("ring31",1)
													 DestroyItem("ring31")
													 TakePartyItemNum("misc42",1)
													 DestroyItem("misc42")~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp03 SAY @1234984
		IF ~PartyGoldLT(30000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(29999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",44)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(30000)
													 DestroyGold(30000)
													 TakePartyItemNum("cdpp14",1)
													 DestroyItem("cdpp14")
													 TakePartyItemNum("ring31",1)
													 DestroyItem("ring31")
													 TakePartyItemNum("misc42",1)
													 DestroyItem("misc42")~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp04 SAY @1234984
		IF ~PartyGoldLT(30000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(29999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",44)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(30000)
													 DestroyGold(30000)
													 TakePartyItemNum("c!pp14",1)
													 DestroyItem("c!pp14")
													 TakePartyItemNum("ring31",1)
													 DestroyItem("ring31")
													 TakePartyItemNum("misc42",1)
													 DestroyItem("misc42")~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#NoItemUp SAY @1234
		COPY_TRANS WSMITH01 13
	END
END