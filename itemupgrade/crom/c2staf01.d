EXTEND_BOTTOM WSMITH01 13
	IF ~OR(3) 
			PartyHasItem("staf15") 
            PartyHasItem("staf16") 
            PartyHasItem("staf17")~ THEN GOTO XO#ItemUp00
END
  
APPEND WSMITH01
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @123443
		IF ~PartyHasItem("staf15")
            PartyHasItem("staf16")
            PartyHasItem("staf17")~ THEN GOTO XO#ItemUp02
		IF ~OR(3) 
				!PartyHasItem("staf15") 
				!PartyHasItem("staf16") 
                !PartyHasItem("staf17")~ THEN GOTO XO#ItemUp01
	END
  
	IF ~~ THEN BEGIN XO#ItemUp01 SAY @1234843
		IF ~~ THEN GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp02 SAY @1234943
		IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(19999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",4)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(20000)
													 DestroyGold(20000)
													 TakePartyItemNum("staf15",1)
													 DestroyItem("staf15")
													 TakePartyItemNum("staf16",1)
													 DestroyItem("staf16")
													 TakePartyItemNum("staf17",1)
													 DestroyItem("staf17")~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @1234
		COPY_TRANS WSMITH01 13
	END
END