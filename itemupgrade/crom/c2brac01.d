EXTEND_BOTTOM WSMITH01 13
	IF ~OR(4)
			PartyHasItem("brac17")
			PartyHasItem("brac14")
			PartyHasItem("ring35")
			PartyHasItem("ring36")~ THEN GOTO XO#ItemUp00
END
  
APPEND WSMITH01
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @123477
		IF ~PartyHasItem("brac17")
			PartyHasItem("brac14")
			PartyHasItem("ring35")
			PartyHasItem("ring36")
			NumItemsPartyLT("ring06",2)
			NumItemsPartyLT("cdring06",2)
			NumItemsPartyLT("ring06cd",2)~ THEN GOTO XO#ItemUp01
		IF ~OR(4)
				!PartyHasItem("brac17")
				!PartyHasItem("brac14")
				!PartyHasItem("ring35")
				!PartyHasItem("ring36")~ THEN GOTO XO#ItemUp01
		IF ~PartyHasItem("brac17")
				PartyHasItem("brac14")
				PartyHasItem("ring35")
				PartyHasItem("ring36")
			NumItemsPartyGT("ring06",1)~ THEN GOTO XO#ItemUp02
		IF ~PartyHasItem("brac17")
			PartyHasItem("brac14")
			PartyHasItem("ring35")
			PartyHasItem("ring36")
			NumItemsPartyGT("cdring06",1)~ THEN GOTO XO#ItemUp03
		IF ~PartyHasItem("brac17")
			PartyHasItem("brac14")
			PartyHasItem("ring35")
			PartyHasItem("ring36")
			NumItemsPartyGT("ring06cd",1)~ THEN GOTO XO#ItemUp04
	END
  
	IF ~~ THEN BEGIN XO#ItemUp01 SAY @1234877
		IF ~~ THEN GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp02 SAY @1234977
		IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(4999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",34)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(5000)
													 DestroyGold(5000)
													 TakePartyItemNum("brac17",1)
													 DestroyItem("brac17")
													 TakePartyItemNum("brac14",1)
													 DestroyItem("brac14")
													 TakePartyItemNum("ring35",1)
													 DestroyItem("ring35")
													 TakePartyItemNum("ring36",1)
													 DestroyItem("ring36")
													 TakePartyItemNum("ring06",1)
													 DestroyItem("ring06")
													 TakePartyItemNum("ring06",1)
													 DestroyItem("ring06")~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp03 SAY @1234977
		IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(4999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",34)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(5000)
													 DestroyGold(5000)
													 TakePartyItemNum("brac17",1)
													 DestroyItem("brac17")
													 TakePartyItemNum("brac14",1)
													 DestroyItem("brac14")
													 TakePartyItemNum("ring35",1)
													 DestroyItem("ring35")
													 TakePartyItemNum("ring36",1)
													 DestroyItem("ring36")
													 TakePartyItemNum("cdring06",1)
													 DestroyItem("cdring06")
													 TakePartyItemNum("cdring06",1)
													 DestroyItem("cdring06")~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp04 SAY @1234977
		IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(4999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",34)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(5000)
													 DestroyGold(5000)
													 TakePartyItemNum("brac17",1)
													 DestroyItem("brac17")
													 TakePartyItemNum("brac14",1)
													 DestroyItem("brac14")
													 TakePartyItemNum("ring35",1)
													 DestroyItem("ring35")
													 TakePartyItemNum("ring36",1)
													 DestroyItem("ring36")
													 TakePartyItemNum("ring06cd",1)
													 DestroyItem("ring06cd")
													 TakePartyItemNum("ring06cd",1)
													 DestroyItem("ring06cd")~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @1234
		COPY_TRANS WSMITH01 13
	END
END