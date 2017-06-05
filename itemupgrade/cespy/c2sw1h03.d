EXTEND_BOTTOM BOTSMITH 4
	IF ~PartyHasItem("sw1h52")~ THEN GOTO XO#ItemUp00
END
  
APPEND BOTSMITH
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @567888
		IF ~PartyHasItem("sw1h52")
			OR(2)
				!PartyHasItem("sw1h23")
				!PartyHasItem("sw1h35")~ THEN GOTO XO#ItemUp01
		IF ~PartyHasItem("sw1h52")
			PartyHasItem("sw1h23")
			PartyHasItem("sw1h35")~ THEN GOTO XO#ItemUp02
	END
  
	IF ~~ THEN BEGIN XO#ItemUp01 SAY @5678888
		IF ~~ THEN GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp02 SAY @5678988
		IF ~PartyGoldLT(15000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(14999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",36)
													 SetGlobal("ImpForgeStuff","GLOBAL",1)
													 SetGlobal("XO#TOBCraft","GLOBAL",1)
													 TakePartyGold(15000)
													 DestroyGold(15000)
													 TakePartyItemNum("sw1h52",1)
													 DestroyItem("sw1h52")
													 TakePartyItemNum("sw1h23",1)
													 DestroyItem("sw1h23")
													 TakePartyItemNum("sw1h35",1)
													 DestroyItem("sw1h35")~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @5678
		COPY_TRANS BOTSMITH 4
	END
END