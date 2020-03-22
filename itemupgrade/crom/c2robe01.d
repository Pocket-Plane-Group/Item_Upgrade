EXTEND_BOTTOM WSMITH01 13
  IF ~OR(2)
      PartyHasItem("clck15")
      PartyHasItem("clck19")~ THEN GOTO XO#ItemUp00
END

APPEND WSMITH01
  IF ~~ THEN BEGIN XO#ItemUp00 SAY @123455
    IF ~~ THEN GOTO XO#ItemUp01_contin
    IF ~Global("CD_SCS_Contingency","MYAREA",1)~ THEN GOTO XO#ItemUp01_goi
    IF ~OR(2)
          PartyHasItem("clck15")
          PartyHasItem("clck19")
        PartyHasItem("scrl7u")
        Global("CD_SCS_Contingency","MYAREA",0)
        OR(3)
          PartyHasItem("clck01")
          PartyHasItem("cdpp8")
          PartyHasItem("c!pp8")
        PartyHasItem("scrl5k")~ THEN GOTO XO#ItemUp02_contin
    IF ~OR(2)
          PartyHasItem("clck15")
          PartyHasItem("clck19")
        PartyHasItem("scrl7f")
        Global("CD_SCS_Contingency","MYAREA",1)
        OR(3)
          PartyHasItem("clck01")
          PartyHasItem("cdpp8")
          PartyHasItem("c!pp8")
        PartyHasItem("scrl5k")~ THEN GOTO XO#ItemUp02_goi
  END

  IF ~~ THEN BEGIN XO#ItemUp01_contin SAY @1234855 // contingency
    IF ~~ THEN GOTO XO#NoItemUp
  END

  IF ~~ THEN BEGIN XO#ItemUp01_goi SAY @1234856 // GoI
    IF ~~ THEN GOTO XO#NoItemUp
  END

  IF ~~ THEN BEGIN XO#ItemUp02_contin SAY @1234955
    IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO XO#NoItemUp
    IF ~PartyHasItem("clck15")
        PartyHasItem("clck01")
        PartyGoldGT(19999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",14)
                                                  SetGlobal("ForgeStuff","GLOBAL",1)
                                                  TakePartyGold(20000)
                                                  DestroyGold(20000)
                                                  TakePartyItemNum("clck15",1)
                                                  DestroyItem("clck15")
                                                  TakePartyItemNum("clck01",1)
                                                  DestroyItem("clck01")
                                                  TakePartyItemNum("scrl7u",1)
                                                  DestroyItem("scrl7u")
                                                  TakePartyItemNum("scrl5k",1)
                                                  DestroyItem("scrl5k")~ GOTO 56
    IF ~PartyHasItem("clck19") !PartyHasItem("clck15")
        PartyHasItem("clck01")
        PartyGoldGT(19999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",14)
                                                  SetGlobal("ForgeStuff","GLOBAL",1)
                                                  TakePartyGold(20000)
                                                  DestroyGold(20000)
                                                  TakePartyItemNum("clck19",1)
                                                  DestroyItem("clck19")
                                                  TakePartyItemNum("clck01",1)
                                                  DestroyItem("clck01")
                                                  TakePartyItemNum("scrl7u",1)
                                                  DestroyItem("scrl7u")
                                                  TakePartyItemNum("scrl5k",1)
                                                  DestroyItem("scrl5k")~ GOTO 56
    IF ~PartyHasItem("clck15")
        PartyHasItem("cdpp8") !PartyHasItem("clck01")
        PartyGoldGT(19999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",14)
                                                  SetGlobal("ForgeStuff","GLOBAL",1)
                                                  TakePartyGold(20000)
                                                  DestroyGold(20000)
                                                  TakePartyItemNum("clck15",1)
                                                  DestroyItem("clck15")
                                                  TakePartyItemNum("cdpp8",1)
                                                  DestroyItem("cdpp8")
                                                  TakePartyItemNum("scrl7u",1)
                                                  DestroyItem("scrl7u")
                                                  TakePartyItemNum("scrl5k",1)
                                                  DestroyItem("scrl5k")~ GOTO 56
    IF ~PartyHasItem("clck19") !PartyHasItem("clck15")
        PartyHasItem("cdpp8") !PartyHasItem("clck01")
        PartyGoldGT(19999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",14)
                                                  SetGlobal("ForgeStuff","GLOBAL",1)
                                                  TakePartyGold(20000)
                                                  DestroyGold(20000)
                                                  TakePartyItemNum("clck19",1)
                                                  DestroyItem("clck19")
                                                  TakePartyItemNum("cdpp8",1)
                                                  DestroyItem("cdpp8")
                                                  TakePartyItemNum("scrl7u",1)
                                                  DestroyItem("scrl7u")
                                                  TakePartyItemNum("scrl5k",1)
                                                  DestroyItem("scrl5k")~ GOTO 56
    IF ~PartyHasItem("clck15")
        PartyHasItem("c!pp8") !PartyHasItem("cdpp8") !PartyHasItem("clck01")
        PartyGoldGT(19999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",14)
                                                  SetGlobal("ForgeStuff","GLOBAL",1)
                                                  TakePartyGold(20000)
                                                  DestroyGold(20000)
                                                  TakePartyItemNum("clck15",1)
                                                  DestroyItem("clck15")
                                                  TakePartyItemNum("c!pp8",1)
                                                  DestroyItem("c!pp8")
                                                  TakePartyItemNum("scrl7u",1)
                                                  DestroyItem("scrl7u")
                                                  TakePartyItemNum("scrl5k",1)
                                                  DestroyItem("scrl5k")~ GOTO 56
    IF ~PartyHasItem("clck19") !PartyHasItem("clck15")
        PartyHasItem("c!pp8") !PartyHasItem("cdpp8") !PartyHasItem("clck01")
        PartyGoldGT(19999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",14)
                                                  SetGlobal("ForgeStuff","GLOBAL",1)
                                                  TakePartyGold(20000)
                                                  DestroyGold(20000)
                                                  TakePartyItemNum("clck19",1)
                                                  DestroyItem("clck19")
                                                  TakePartyItemNum("c!pp8",1)
                                                  DestroyItem("c!pp8")
                                                  TakePartyItemNum("scrl7u",1)
                                                  DestroyItem("scrl7u")
                                                  TakePartyItemNum("scrl5k",1)
                                                  DestroyItem("scrl5k")~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
  END

  IF ~~ THEN BEGIN XO#ItemUp02_goi SAY @1234956
    IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO XO#NoItemUp
    IF ~PartyHasItem("clck15")
        PartyHasItem("clck01")
        PartyGoldGT(19999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",14)
                                                  SetGlobal("ForgeStuff","GLOBAL",1)
                                                  TakePartyGold(20000)
                                                  DestroyGold(20000)
                                                  TakePartyItemNum("clck15",1)
                                                  DestroyItem("clck15")
                                                  TakePartyItemNum("clck01",1)
                                                  DestroyItem("clck01")
                                                  TakePartyItemNum("scrl7f",1)
                                                  DestroyItem("scrl7f")
                                                  TakePartyItemNum("scrl5k",1)
                                                  DestroyItem("scrl5k")~ GOTO 56
    IF ~PartyHasItem("clck19") !PartyHasItem("clck15")
        PartyHasItem("clck01")
        PartyGoldGT(19999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",14)
                                                  SetGlobal("ForgeStuff","GLOBAL",1)
                                                  TakePartyGold(20000)
                                                  DestroyGold(20000)
                                                  TakePartyItemNum("clck19",1)
                                                  DestroyItem("clck19")
                                                  TakePartyItemNum("clck01",1)
                                                  DestroyItem("clck01")
                                                  TakePartyItemNum("scrl7f",1)
                                                  DestroyItem("scrl7f")
                                                  TakePartyItemNum("scrl5k",1)
                                                  DestroyItem("scrl5k")~ GOTO 56
    IF ~PartyHasItem("clck15")
        PartyHasItem("cdpp8") !PartyHasItem("clck01")
        PartyGoldGT(19999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",14)
                                                  SetGlobal("ForgeStuff","GLOBAL",1)
                                                  TakePartyGold(20000)
                                                  DestroyGold(20000)
                                                  TakePartyItemNum("clck15",1)
                                                  DestroyItem("clck15")
                                                  TakePartyItemNum("cdpp8",1)
                                                  DestroyItem("cdpp8")
                                                  TakePartyItemNum("scrl7f",1)
                                                  DestroyItem("scrl7f")
                                                  TakePartyItemNum("scrl5k",1)
                                                  DestroyItem("scrl5k")~ GOTO 56
    IF ~PartyHasItem("clck19") !PartyHasItem("clck15")
        PartyHasItem("cdpp8") !PartyHasItem("clck01")
        PartyGoldGT(19999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",14)
                                                  SetGlobal("ForgeStuff","GLOBAL",1)
                                                  TakePartyGold(20000)
                                                  DestroyGold(20000)
                                                  TakePartyItemNum("clck19",1)
                                                  DestroyItem("clck19")
                                                  TakePartyItemNum("cdpp8",1)
                                                  DestroyItem("cdpp8")
                                                  TakePartyItemNum("scrl7f",1)
                                                  DestroyItem("scrl7f")
                                                  TakePartyItemNum("scrl5k",1)
                                                  DestroyItem("scrl5k")~ GOTO 56
    IF ~PartyHasItem("clck15")
        PartyHasItem("c!pp8") !PartyHasItem("cdpp8") !PartyHasItem("clck01")
        PartyGoldGT(19999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",14)
                                                  SetGlobal("ForgeStuff","GLOBAL",1)
                                                  TakePartyGold(20000)
                                                  DestroyGold(20000)
                                                  TakePartyItemNum("clck15",1)
                                                  DestroyItem("clck15")
                                                  TakePartyItemNum("c!pp8",1)
                                                  DestroyItem("c!pp8")
                                                  TakePartyItemNum("scrl7f",1)
                                                  DestroyItem("scrl7f")
                                                  TakePartyItemNum("scrl5k",1)
                                                  DestroyItem("scrl5k")~ GOTO 56
    IF ~PartyHasItem("clck19") !PartyHasItem("clck15")
        PartyHasItem("c!pp8") !PartyHasItem("cdpp8") !PartyHasItem("clck01")
        PartyGoldGT(19999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",14)
                                                  SetGlobal("ForgeStuff","GLOBAL",1)
                                                  TakePartyGold(20000)
                                                  DestroyGold(20000)
                                                  TakePartyItemNum("clck19",1)
                                                  DestroyItem("clck19")
                                                  TakePartyItemNum("c!pp8",1)
                                                  DestroyItem("c!pp8")
                                                  TakePartyItemNum("scrl7f",1)
                                                  DestroyItem("scrl7f")
                                                  TakePartyItemNum("scrl5k",1)
                                                  DestroyItem("scrl5k")~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
  END


  IF ~~ THEN BEGIN XO#NoItemUp SAY @1234
    COPY_TRANS WSMITH01 13
  END
END