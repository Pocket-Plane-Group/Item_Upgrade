EXTEND_BOTTOM BOTSMITH 4
	IF ~OR(3)
			PartyHasItem("ring41")
			PartyHasItem("cdpp14")
			PartyHasItem("c!pp14")~ THEN GOTO XO#ItemUp00
END
  
APPEND BOTSMITH
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @567853
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
  
	IF ~~ THEN BEGIN XO#ItemUp01 SAY @5678853
		IF ~~ THEN GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp02 SAY @5678953
		IF ~PartyGoldLT(30000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(29999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",49)
											 		 SetGlobal("ImpForgeStuff","GLOBAL",1)
													 SetGlobal("XO#TOBCraft","GLOBAL",1)
													 TakePartyGold(30000)
													 DestroyGold(30000)
													 TakePartyItemNum("ring41",1)
													 DestroyItem("ring41")
													 TakePartyItemNum("ring31",1)
													 DestroyItem("ring31")
													 TakePartyItemNum("misc42",1)
													 DestroyItem("misc42")~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp03 SAY @5678953
		IF ~PartyGoldLT(30000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(29999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",49)
											 		 SetGlobal("ImpForgeStuff","GLOBAL",1)
													 SetGlobal("XO#TOBCraft","GLOBAL",1)
													 TakePartyGold(30000)
													 DestroyGold(30000)
													 TakePartyItemNum("cdpp14",1)
													 DestroyItem("cdpp14")
													 TakePartyItemNum("ring31",1)
													 DestroyItem("ring31")
													 TakePartyItemNum("misc42",1)
													 DestroyItem("misc42")~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp04 SAY @5678953
		IF ~PartyGoldLT(30000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(29999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",49)
											 		 SetGlobal("ImpForgeStuff","GLOBAL",1)
													 SetGlobal("XO#TOBCraft","GLOBAL",1)
													 TakePartyGold(30000)
													 DestroyGold(30000)
													 TakePartyItemNum("c!pp14",1)
													 DestroyItem("c!pp14")
													 TakePartyItemNum("ring31",1)
													 DestroyItem("ring31")
													 TakePartyItemNum("misc42",1)
													 DestroyItem("misc42")~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @5678
		COPY_TRANS BOTSMITH 4
	END
END