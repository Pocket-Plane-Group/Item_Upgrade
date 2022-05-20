EXTEND_BOTTOM WSMITH01 13
	IF ~OR(3)
			PartyHasItem("amul22")
			PartyHasItem("amul24")
			PartyHasItem("amul25")~ THEN GOTO XO#ItemUp00
END
  
APPEND WSMITH01
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @123478
		IF ~~ THEN GOTO XO#ItemUp01
    IF ~PartyHasItem("amul22")
    PartyHasItem("amul24")
    PartyHasItem("amul25")
    NumItemsPartyGT("amul14",1)
    ~ THEN GOTO XO#ItemUp2

    IF ~PartyHasItem("amul22")
    PartyHasItem("amul24")
    PartyHasItem("amul25")
    NumItemsPartyGT("bdamul24",1)
    !NumItemsPartyGT("amul14",1)
    ~ THEN GOTO XO#ItemUp3

    IF ~PartyHasItem("amul22")
    PartyHasItem("amul24")
    PartyHasItem("amul25")
    NumItemsPartyGT("cdpp7",1)
    !NumItemsPartyGT("amul14",1)
    !NumItemsPartyGT("bdamul24",1)
    ~ THEN GOTO XO#ItemUp4

    IF ~PartyHasItem("amul22")
    PartyHasItem("amul24")
    PartyHasItem("amul25")
    NumItemsPartyGT("c!pp7",1)
    !NumItemsPartyGT("amul14",1)
    !NumItemsPartyGT("bdamul24",1)
    !NumItemsPartyGT("cdpp7",1)
    ~ THEN GOTO XO#ItemUp5

    IF ~PartyHasItem("amul22")
    PartyHasItem("amul24")
    PartyHasItem("amul25")
    NumItemsPartyGT("cdpp30",1)
    !NumItemsPartyGT("amul14",1)
    !NumItemsPartyGT("bdamul24",1)
    !NumItemsPartyGT("cdpp7",1)
    !NumItemsPartyGT("c!pp7",1)
    ~ THEN GOTO XO#ItemUp6

    IF ~PartyHasItem("amul22")
    PartyHasItem("amul24")
    PartyHasItem("amul25")
    NumItemsPartyGT("c!pp30",1)
    !NumItemsPartyGT("amul14",1)
    !NumItemsPartyGT("bdamul24",1)
    !NumItemsPartyGT("cdpp7",1)
    !NumItemsPartyGT("c!pp7",1)
    !NumItemsPartyGT("cdpp30",1)
    ~ THEN GOTO XO#ItemUp7

    IF ~PartyHasItem("amul22")
    PartyHasItem("amul24")
    PartyHasItem("amul25")
    NumItemsParty("amul14",1)
    NumItemsParty("bdamul24",1)
    ~ THEN GOTO XO#ItemUp8

    IF ~PartyHasItem("amul22")
    PartyHasItem("amul24")
    PartyHasItem("amul25")
    NumItemsParty("amul14",1)
    NumItemsParty("c!pp7",1)
    !PartyHasItem("bdamul24")
    ~ THEN GOTO XO#ItemUp9

    IF ~PartyHasItem("amul22")
    PartyHasItem("amul24")
    PartyHasItem("amul25")
    NumItemsParty("amul14",1)
    NumItemsParty("cdpp7",1)
    !PartyHasItem("bdamul24")
    !PartyHasItem("c!pp7")
    ~ THEN GOTO XO#ItemUp10

    IF ~PartyHasItem("amul22")
    PartyHasItem("amul24")
    PartyHasItem("amul25")
    NumItemsParty("amul14",1)
    NumItemsParty("c!pp30",1)
    !PartyHasItem("bdamul24")
    !PartyHasItem("c!pp7")
    !PartyHasItem("cdpp7")
    ~ THEN GOTO XO#ItemUp11

    IF ~PartyHasItem("amul22")
    PartyHasItem("amul24")
    PartyHasItem("amul25")
    NumItemsParty("amul14",1)
    NumItemsParty("cdpp30",1)
    !PartyHasItem("bdamul24")
    !PartyHasItem("c!pp7")
    !PartyHasItem("cdpp7")
    !PartyHasItem("c!pp30")
    ~ THEN GOTO XO#ItemUp12

    IF ~PartyHasItem("amul22")
    PartyHasItem("amul24")
    PartyHasItem("amul25")
    NumItemsParty("bdamul24",1)
    NumItemsParty("c!pp7",1)
    !PartyHasItem("amul14")
    ~ THEN GOTO XO#ItemUp13

    IF ~PartyHasItem("amul22")
    PartyHasItem("amul24")
    PartyHasItem("amul25")
    NumItemsParty("bdamul24",1)
    NumItemsParty("cdpp7",1)
    !PartyHasItem("amul14")
    !PartyHasItem("c!pp7")
    ~ THEN GOTO XO#ItemUp14

    IF ~PartyHasItem("amul22")
    PartyHasItem("amul24")
    PartyHasItem("amul25")
    NumItemsParty("bdamul24",1)
    NumItemsParty("c!pp30",1)
    !PartyHasItem("amul14")
    !PartyHasItem("c!pp7")
    !PartyHasItem("cdpp7")
    ~ THEN GOTO XO#ItemUp15

    IF ~PartyHasItem("amul22")
    PartyHasItem("amul24")
    PartyHasItem("amul25")
    NumItemsParty("bdamul24",1)
    NumItemsParty("cdpp30",1)
    !PartyHasItem("amul14")
    !PartyHasItem("c!pp7")
    !PartyHasItem("cdpp7")
    !PartyHasItem("c!pp30")
    ~ THEN GOTO XO#ItemUp16

    IF ~PartyHasItem("amul22")
    PartyHasItem("amul24")
    PartyHasItem("amul25")
    NumItemsParty("c!pp7",1)
    NumItemsParty("cdpp7",1)
    !PartyHasItem("amul14")
    !PartyHasItem("bdamul24")
    ~ THEN GOTO XO#ItemUp17

    IF ~PartyHasItem("amul22")
    PartyHasItem("amul24")
    PartyHasItem("amul25")
    NumItemsParty("c!pp7",1)
    NumItemsParty("c!pp30",1)
    !PartyHasItem("amul14")
    !PartyHasItem("bdamul24")
    !PartyHasItem("cdpp7")
    ~ THEN GOTO XO#ItemUp18

    IF ~PartyHasItem("amul22")
    PartyHasItem("amul24")
    PartyHasItem("amul25")
    NumItemsParty("c!pp7",1)
    NumItemsParty("cdpp30",1)
    !PartyHasItem("amul14")
    !PartyHasItem("bdamul24")
    !PartyHasItem("cdpp7")
    !PartyHasItem("c!pp30")
    ~ THEN GOTO XO#ItemUp19

    IF ~PartyHasItem("amul22")
    PartyHasItem("amul24")
    PartyHasItem("amul25")
    NumItemsParty("cdpp7",1)
    NumItemsParty("c!pp30",1)
    !PartyHasItem("amul14")
    !PartyHasItem("bdamul24")
    !PartyHasItem("c!pp7")
    ~ THEN GOTO XO#ItemUp20

    IF ~PartyHasItem("amul22")
    PartyHasItem("amul24")
    PartyHasItem("amul25")
    NumItemsParty("cdpp7",1)
    NumItemsParty("cdpp30",1)
    !PartyHasItem("amul14")
    !PartyHasItem("bdamul24")
    !PartyHasItem("c!pp7")
    !PartyHasItem("c!pp30")
    ~ THEN GOTO XO#ItemUp21

    IF ~PartyHasItem("amul22")
    PartyHasItem("amul24")
    PartyHasItem("amul25")
    NumItemsParty("c!pp30",1)
    NumItemsParty("cdpp30",1)
    !PartyHasItem("amul14")
    !PartyHasItem("bdamul24")
    !PartyHasItem("c!pp7")
    !PartyHasItem("cdpp7")
    ~ THEN GOTO XO#ItemUp22
	END
  
	IF ~~ THEN BEGIN XO#ItemUp01 SAY @1234878
		IF ~~ THEN GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#ItemUp2 SAY @1234978
		IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",35)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(10000)
													 DestroyGold(10000)
													 TakePartyItemNum("amul22",1)
													 DestroyItem("amul22")
													 TakePartyItemNum("amul24",1)
													 DestroyItem("amul24")
													 TakePartyItemNum("amul25",1)
													 DestroyItem("amul25")
													 TakePartyItemNum("amul14",1) DestroyItem("amul14")
													 TakePartyItemNum("amul14",1) DestroyItem("amul14")
~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#ItemUp3 SAY @1234978
		IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",35)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(10000)
													 DestroyGold(10000)
													 TakePartyItemNum("amul22",1)
													 DestroyItem("amul22")
													 TakePartyItemNum("amul24",1)
													 DestroyItem("amul24")
													 TakePartyItemNum("amul25",1)
													 DestroyItem("amul25")
													 TakePartyItemNum("bdamul24",1) DestroyItem("bdamul24")
													 TakePartyItemNum("bdamul24",1) DestroyItem("bdamul24")
~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#ItemUp4 SAY @1234978
		IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",35)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(10000)
													 DestroyGold(10000)
													 TakePartyItemNum("amul22",1)
													 DestroyItem("amul22")
													 TakePartyItemNum("amul24",1)
													 DestroyItem("amul24")
													 TakePartyItemNum("amul25",1)
													 DestroyItem("amul25")
													 TakePartyItemNum("cdpp7",1) DestroyItem("cdpp7")
													 TakePartyItemNum("cdpp7",1) DestroyItem("cdpp7")
~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#ItemUp5 SAY @1234978
		IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",35)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(10000)
													 DestroyGold(10000)
													 TakePartyItemNum("amul22",1)
													 DestroyItem("amul22")
													 TakePartyItemNum("amul24",1)
													 DestroyItem("amul24")
													 TakePartyItemNum("amul25",1)
													 DestroyItem("amul25")
													 TakePartyItemNum("c!pp7",1) DestroyItem("c!pp7")
													 TakePartyItemNum("c!pp7",1) DestroyItem("c!pp7")
~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#ItemUp6 SAY @1234978
		IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",35)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(10000)
													 DestroyGold(10000)
													 TakePartyItemNum("amul22",1)
													 DestroyItem("amul22")
													 TakePartyItemNum("amul24",1)
													 DestroyItem("amul24")
													 TakePartyItemNum("amul25",1)
													 DestroyItem("amul25")
													 TakePartyItemNum("cdpp30",1) DestroyItem("cdpp30")
													 TakePartyItemNum("cdpp30",1) DestroyItem("cdpp30")
~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#ItemUp7 SAY @1234978
		IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",35)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(10000)
													 DestroyGold(10000)
													 TakePartyItemNum("amul22",1)
													 DestroyItem("amul22")
													 TakePartyItemNum("amul24",1)
													 DestroyItem("amul24")
													 TakePartyItemNum("amul25",1)
													 DestroyItem("amul25")
													 TakePartyItemNum("c!pp30",1) DestroyItem("c!pp30")
													 TakePartyItemNum("c!pp30",1) DestroyItem("c!pp30")
~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#ItemUp8 SAY @1234978
		IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",35)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(10000)
													 DestroyGold(10000)
													 TakePartyItemNum("amul22",1)
													 DestroyItem("amul22")
													 TakePartyItemNum("amul24",1)
													 DestroyItem("amul24")
													 TakePartyItemNum("amul25",1)
													 DestroyItem("amul25")
													 TakePartyItemNum("amul14",1) DestroyItem("amul14")
													 TakePartyItemNum("bdamul24",1) DestroyItem("bdamul24")
~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#ItemUp9 SAY @1234978
		IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",35)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(10000)
													 DestroyGold(10000)
													 TakePartyItemNum("amul22",1)
													 DestroyItem("amul22")
													 TakePartyItemNum("amul24",1)
													 DestroyItem("amul24")
													 TakePartyItemNum("amul25",1)
													 DestroyItem("amul25")
													 TakePartyItemNum("amul14",1) DestroyItem("amul14")
													 TakePartyItemNum("c!pp7",1) DestroyItem("c!pp7")
~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#ItemUp10 SAY @1234978
		IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",35)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(10000)
													 DestroyGold(10000)
													 TakePartyItemNum("amul22",1)
													 DestroyItem("amul22")
													 TakePartyItemNum("amul24",1)
													 DestroyItem("amul24")
													 TakePartyItemNum("amul25",1)
													 DestroyItem("amul25")
													 TakePartyItemNum("amul14",1) DestroyItem("amul14")
													 TakePartyItemNum("cdpp7",1) DestroyItem("cdpp7")
~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#ItemUp11 SAY @1234978
		IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",35)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(10000)
													 DestroyGold(10000)
													 TakePartyItemNum("amul22",1)
													 DestroyItem("amul22")
													 TakePartyItemNum("amul24",1)
													 DestroyItem("amul24")
													 TakePartyItemNum("amul25",1)
													 DestroyItem("amul25")
													 TakePartyItemNum("amul14",1) DestroyItem("amul14")
													 TakePartyItemNum("c!pp30",1) DestroyItem("c!pp30")
~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#ItemUp12 SAY @1234978
		IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",35)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(10000)
													 DestroyGold(10000)
													 TakePartyItemNum("amul22",1)
													 DestroyItem("amul22")
													 TakePartyItemNum("amul24",1)
													 DestroyItem("amul24")
													 TakePartyItemNum("amul25",1)
													 DestroyItem("amul25")
													 TakePartyItemNum("amul14",1) DestroyItem("amul14")
													 TakePartyItemNum("cdpp30",1) DestroyItem("cdpp30")
~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#ItemUp13 SAY @1234978
		IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",35)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(10000)
													 DestroyGold(10000)
													 TakePartyItemNum("amul22",1)
													 DestroyItem("amul22")
													 TakePartyItemNum("amul24",1)
													 DestroyItem("amul24")
													 TakePartyItemNum("amul25",1)
													 DestroyItem("amul25")
													 TakePartyItemNum("bdamul24",1) DestroyItem("bdamul24")
													 TakePartyItemNum("c!pp7",1)    DestroyItem("c!pp7")
~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#ItemUp14 SAY @1234978
		IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",35)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(10000)
													 DestroyGold(10000)
													 TakePartyItemNum("amul22",1)
													 DestroyItem("amul22")
													 TakePartyItemNum("amul24",1)
													 DestroyItem("amul24")
													 TakePartyItemNum("amul25",1)
													 DestroyItem("amul25")
													 TakePartyItemNum("bdamul24",1) DestroyItem("bdamul24")
													 TakePartyItemNum("cdpp7",1)    DestroyItem("cdpp7")
~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#ItemUp15 SAY @1234978
		IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",35)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(10000)
													 DestroyGold(10000)
													 TakePartyItemNum("amul22",1)
													 DestroyItem("amul22")
													 TakePartyItemNum("amul24",1)
													 DestroyItem("amul24")
													 TakePartyItemNum("amul25",1)
													 DestroyItem("amul25")
													 TakePartyItemNum("bdamul24",1) DestroyItem("bdamul24")
													 TakePartyItemNum("c!pp30",1)   DestroyItem("c!pp30")
~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#ItemUp16 SAY @1234978
		IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",35)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(10000)
													 DestroyGold(10000)
													 TakePartyItemNum("amul22",1)
													 DestroyItem("amul22")
													 TakePartyItemNum("amul24",1)
													 DestroyItem("amul24")
													 TakePartyItemNum("amul25",1)
													 DestroyItem("amul25")
													 TakePartyItemNum("bdamul24",1) DestroyItem("bdamul24")
													 TakePartyItemNum("cdpp30",1)   DestroyItem("cdpp30")
~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#ItemUp17 SAY @1234978
		IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",35)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(10000)
													 DestroyGold(10000)
													 TakePartyItemNum("amul22",1)
													 DestroyItem("amul22")
													 TakePartyItemNum("amul24",1)
													 DestroyItem("amul24")
													 TakePartyItemNum("amul25",1)
													 DestroyItem("amul25")
													 TakePartyItemNum("c!pp7",1) DestroyItem("c!pp7")
													 TakePartyItemNum("cdpp7",1) DestroyItem("cdpp7")
~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#ItemUp18 SAY @1234978
		IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",35)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(10000)
													 DestroyGold(10000)
													 TakePartyItemNum("amul22",1)
													 DestroyItem("amul22")
													 TakePartyItemNum("amul24",1)
													 DestroyItem("amul24")
													 TakePartyItemNum("amul25",1)
													 DestroyItem("amul25")
													 TakePartyItemNum("c!pp7",1)  DestroyItem("c!pp7")
													 TakePartyItemNum("c!pp30",1) DestroyItem("c!pp30")
~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#ItemUp19 SAY @1234978
		IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",35)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(10000)
													 DestroyGold(10000)
													 TakePartyItemNum("amul22",1)
													 DestroyItem("amul22")
													 TakePartyItemNum("amul24",1)
													 DestroyItem("amul24")
													 TakePartyItemNum("amul25",1)
													 DestroyItem("amul25")
													 TakePartyItemNum("c!pp7",1)  DestroyItem("c!pp7")
													 TakePartyItemNum("cdpp30",1) DestroyItem("cdpp30")
~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#ItemUp20 SAY @1234978
		IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",35)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(10000)
													 DestroyGold(10000)
													 TakePartyItemNum("amul22",1)
													 DestroyItem("amul22")
													 TakePartyItemNum("amul24",1)
													 DestroyItem("amul24")
													 TakePartyItemNum("amul25",1)
													 DestroyItem("amul25")
													 TakePartyItemNum("cdpp7",1)  DestroyItem("cdpp7")
													 TakePartyItemNum("c!pp30",1) DestroyItem("c!pp30")
~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#ItemUp21 SAY @1234978
		IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",35)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(10000)
													 DestroyGold(10000)
													 TakePartyItemNum("amul22",1)
													 DestroyItem("amul22")
													 TakePartyItemNum("amul24",1)
													 DestroyItem("amul24")
													 TakePartyItemNum("amul25",1)
													 DestroyItem("amul25")
													 TakePartyItemNum("cdpp7",1)  DestroyItem("cdpp7")
													 TakePartyItemNum("cdpp30",1) DestroyItem("cdpp30")
~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#ItemUp22 SAY @1234978
		IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",35)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(10000)
													 DestroyGold(10000)
													 TakePartyItemNum("amul22",1)
													 DestroyItem("amul22")
													 TakePartyItemNum("amul24",1)
													 DestroyItem("amul24")
													 TakePartyItemNum("amul25",1)
													 DestroyItem("amul25")
													 TakePartyItemNum("c!pp30",1) DestroyItem("c!pp30")
													 TakePartyItemNum("cdpp30",1) DestroyItem("cdpp30")
~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF WEIGHT #-1 ~OR(2) GlobalGT("XO#Craft","ar0334",0) GlobalGT("XO#ItemUp","ar0334",0)~ THEN BEGIN XO#CRAFT SAY #59797
		IF ~~ THEN DO ~SetGlobal("XO#Craft","ar0334",0) SetGlobal("XO#ItemUp","ar0334",0)~ EXIT
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @1234
		COPY_TRANS WSMITH01 13
	END
END