EXTEND_BOTTOM BOTSMITH 4
	IF ~PartyHasItem("ax1h10")~ THEN GOTO XO#ItemUp00
END
  
APPEND BOTSMITH
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @567889
		IF ~PartyHasItem("ax1h10") 
			!PartyHasItem("misc5k")~ THEN GOTO XO#ItemUp01
		IF ~PartyHasItem("ax1h10")
            PartyHasItem("misc5k")~ THEN GOTO XO#ItemUp02
	END
  
	IF ~~ THEN BEGIN XO#ItemUp01 SAY @5678889
		IF ~~ THEN GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp02 SAY @5678989
		IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(19999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",37)
											 		 SetGlobal("ImpForgeStuff","GLOBAL",1)
													 SetGlobal("XO#TOBCraft","GLOBAL",1)
													 TakePartyGold(20000)
													 DestroyGold(20000)
													 TakePartyItemNum("ax1h10",1)
													 DestroyItem("ax1h10")
													 TakePartyItemNum("misc5k",1)
													 DestroyItem("misc5k")~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @5678
		COPY_TRANS BOTSMITH 4
	END
END