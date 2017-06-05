EXTEND_BOTTOM BOTSMITH 4
	IF ~PartyHasItem("staf14")~ THEN GOTO XO#ItemUp00
END
  
APPEND BOTSMITH
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @567868
		IF ~PartyHasItem("staf14")
			PartyHasItem("ring03")
			!PartyHasItem("ring06")
			!PartyHasItem("cdring06")
			!PartyHasItem("ring06cd")~ THEN GOTO XO#ItemUp01
		IF ~PartyHasItem("staf14")
			!PartyHasItem("ring03")~ THEN GOTO XO#ItemUp01
		IF ~PartyHasItem("staf14")
			PartyHasItem("ring03")
			PartyHasItem("ring06")~ THEN GOTO XO#ItemUp02
		IF ~PartyHasItem("staf14")
			PartyHasItem("ring03")
			PartyHasItem("cdring06")~ THEN GOTO XO#ItemUp03
		IF ~PartyHasItem("staf14")
			PartyHasItem("ring03")
			PartyHasItem("ring06cd")~ THEN GOTO XO#ItemUp04
	END
  
	IF ~~ THEN BEGIN XO#ItemUp01 SAY @5678868
		IF ~~ THEN GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp02 SAY @5678968
		IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(19999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",26)
											 		 SetGlobal("ImpForgeStuff","GLOBAL",1)
													 SetGlobal("XO#TOBCraft","GLOBAL",1)
													 TakePartyGold(20000)
													 DestroyGold(20000)
													 TakePartyItemNum("staf14",1)
													 DestroyItem("staf14")
													 TakePartyItemNum("ring03",1)
													 DestroyItem("ring03")
													 TakePartyItemNum("ring06",1)
													 DestroyItem("ring06")~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp03 SAY @5678968
		IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(19999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",26)
											 		 SetGlobal("ImpForgeStuff","GLOBAL",1)
													 SetGlobal("XO#TOBCraft","GLOBAL",1)
													 TakePartyGold(20000)
													 DestroyGold(20000)
													 TakePartyItemNum("staf14",1)
													 DestroyItem("staf14")
													 TakePartyItemNum("ring03",1)
													 DestroyItem("ring03")
													 TakePartyItemNum("cdring06",1)
													 DestroyItem("cdring06")~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp04 SAY @5678968
		IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(19999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",26)
											 		 SetGlobal("ImpForgeStuff","GLOBAL",1)
													 SetGlobal("XO#TOBCraft","GLOBAL",1)
													 TakePartyGold(20000)
													 DestroyGold(20000)
													 TakePartyItemNum("staf14",1)
													 DestroyItem("staf14")
													 TakePartyItemNum("ring03",1)
													 DestroyItem("ring03")
													 TakePartyItemNum("ring06cd",1)
													 DestroyItem("ring06cd")~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @5678
		COPY_TRANS BOTSMITH 4
	END
END