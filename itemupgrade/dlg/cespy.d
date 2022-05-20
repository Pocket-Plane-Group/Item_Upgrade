
  IF ~~ THEN BEGIN c2itemupgrade // from: 151.1 151.0 2.1 2.0
    SAY @56781
    IF ~~ THEN REPLY @56780 GOTO 4
    IF ~OR(3) PartyHasItem("ring06") PartyHasItem("cdpp11") PartyHasItem("c!pp11")~ THEN REPLY @56782 GOTO rop1
    IF ~OR(6) PartyHasItem("ring07") PartyHasItem("cdpp12") PartyHasItem("c!pp12") PartyHasItem("bdring07") PartyHasItem("cdpp29") PartyHasItem("c!pp29")~ THEN REPLY @56783 GOTO rop2
    IF ~OR(3) PartyHasItem("ring27") 
              PartyHasItem("ring28") 
              PartyHasItem("ring29")~ 
      THEN REPLY @56784 GOTO roem
    IF ~OR(3) PartyHasItem("staf15") 
              PartyHasItem("staf16") 
              PartyHasItem("staf17")~ 
      THEN REPLY @56785 GOTO soem
    IF ~PartyHasItem("boot02")~ THEN REPLY @56786 GOTO b_stealth
    IF ~PartyHasItem("boot03")~ THEN REPLY @56787 GOTO b_north
    IF ~PartyHasItem("boot05")~ THEN REPLY @56788 GOTO b_ground
    IF ~PartyHasItem("boot04")~ THEN REPLY @56789 GOTO b_avoid
    IF ~PartyHasItem("blun22")~ THEN REPLY @567810 GOTO pitch
    IF ~PartyHasItem("blun23")~ THEN REPLY @567811 GOTO fulcrum
    IF ~PartyHasItem("blun18")~ THEN REPLY @567812 GOTO skull
    IF ~PartyHasItem("bow10")~ THEN REPLY @567813 GOTO teleo
    IF ~PartyHasItem("npchan")~ THEN REPLY @567814 GOTO valy
    IF ~OR(4) PartyHasItem("clck15") 
              PartyHasItem("clck16")
              PartyHasItem("clck17")
              PartyHasItem("clck19")~
      THEN REPLY @567815 GOTO robe
    IF ~PartyHasItem("helm04")~ THEN REPLY @567816 GOTO cita
    IF ~PartyHasItem("helm06")~ THEN REPLY @567817 GOTO will
    IF ~PartyHasItem("leat20")~ THEN REPLY @567818 GOTO aeger
    IF ~PartyHasItem("npplat")~ THEN REPLY @567819 GOTO keld_a
    IF ~PartyHasItem("plat06")~ THEN REPLY @567820 GOTO ankheg
    IF ~PartyHasItem("shld25")~ THEN REPLY @567821 GOTO harmony
    IF ~PartyHasItem("sper06")~ THEN REPLY @567822 GOTO spear1
    IF ~PartyHasItem("sper07")~ THEN REPLY @567823 GOTO spear2
    IF ~PartyHasItem("sper08")~ THEN REPLY @567824 GOTO spear3
    IF ~PartyHasItem("staf14")~ THEN REPLY @567825 GOTO stafw
    IF ~PartyHasItem("sw1h31")~ THEN REPLY @567826 GOTO day
    IF ~OR(3) PartyHasItem("sw1h51") PartyHasItem("cdkt23") PartyHasItem("c!kt23")~ THEN REPLY @567827 GOTO cf
    IF ~PartyHasItem("npsw01")~ THEN REPLY @567828 GOTO mazzy
    IF ~PartyHasItem("npsw03")~ THEN REPLY @567829 GOTO keld_s
    IF ~PartyHasItem("npshld")~ THEN REPLY @567830 GOTO anomen
    IF ~PartyHasItem("sw2h14")~ THEN REPLY @567831 GOTO lil
    IF ~OR(2) PartyHasItem("dagg14") PartyHasItem("dagg13")~ 
      THEN REPLY @567832 GOTO dagg
    IF ~OR(3) PartyHasItem("quiver03") PartyHasItem("quiver06")
              PartyHasItem("quiver04")~ THEN REPLY @567876 GOTO quiv
    IF ~PartyHasItem("leat21")~ THEN REPLY @567877 GOTO flesh
    IF ~PartyHasItem("sw2h08")~ THEN REPLY @567878 GOTO reaver
    IF ~PartyHasItem("shld17")~ THEN REPLY @567833 GOTO buckler
    IF ~PartyHasItem("brac17")~ THEN REPLY @567834 GOTO thief
    IF ~OR(3) PartyHasItem("amul22") PartyHasItem("amul24") PartyHasItem("amul25")~ THEN REPLY @567837 GOTO ilmater
    IF ~PartyHasItem("sw1h52")~ THEN REPLY @567838 GOTO water
    IF ~PartyHasItem("ax1h10")~ THEN REPLY @567839 GOTO azur
    IF ~OR(3) PartyHasItem("ring08") PartyHasItem("ring08a") PartyHasItem("ohringwi")~ THEN REPLY @567891 GOTO sorcerian
    IF ~OR(2) PartyHasItem("belt03") PartyHasItem("bdbelt13")~ THEN REPLY @567892 GOTO girdle
    IF ~PartyHasItem("misc3e")~ THEN REPLY @567895 GOTO kitthix
    IF ~PartyHasItem("npsw05")~ THEN REPLY @567897 GOTO hd
    IF ~PartyHasItem("chan14")~ THEN REPLY @567899 GOTO chan01
    IF ~~ THEN REPLY #992 EXIT 
  END

  IF ~~ THEN BEGIN rop1
    SAY @567840 = @5678940 IF ~~ THEN REPLY @567835 GOTO c2itemupgrade
    IF ~!PartyHasItem("c!pp11") !PartyHasItem("cdpp11") PartyHasItem("ring06") PartyHasItem("ring31") PartyHasItem("misc42")
        PartyGoldGT(9999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(10000)      DestroyGold(10000)
          TakePartyItemNum("ring06",1)   DestroyItem("ring06")
          TakePartyItemNum("ring31",1)   DestroyItem("ring31")
          TakePartyItemNum("misc42",1)   DestroyItem("misc42")
          GiveItemCreate("c2ring01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~!PartyHasItem("c!pp11") PartyHasItem("cdpp11") PartyHasItem("ring31") PartyHasItem("misc42")
        PartyGoldGT(9999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(10000)      DestroyGold(10000)
          TakePartyItemNum("cdpp11",1)   DestroyItem("cdpp11")
          TakePartyItemNum("ring31",1)   DestroyItem("ring31")
          TakePartyItemNum("misc42",1)   DestroyItem("misc42")
          GiveItemCreate("c2ring01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("c!pp11") PartyHasItem("ring31") PartyHasItem("misc42")
        PartyGoldGT(9999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(10000)      DestroyGold(10000)
          TakePartyItemNum("c!pp11",1)   DestroyItem("c!pp11")
          TakePartyItemNum("ring31",1)   DestroyItem("ring31")
          TakePartyItemNum("misc42",1)   DestroyItem("misc42")
          GiveItemCreate("c2ring01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN rop2
    SAY @567841 = @5678941 IF ~~ THEN REPLY @567835 GOTO c2itemupgrade
    IF ~!PartyHasItem("c!pp29") !PartyHasItem("cdpp29") !PartyHasItem("bdring07")
        !PartyHasItem("c!pp12") !PartyHasItem("cdpp12") PartyHasItem("ring07") PartyHasItem("ring31") PartyHasItem("misc42")
        PartyGoldGT(19999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(20000)      DestroyGold(20000)
          TakePartyItemNum("ring07",1)   DestroyItem("ring07")
          TakePartyItemNum("ring31",1)   DestroyItem("ring31")
          TakePartyItemNum("misc42",1)   DestroyItem("misc42")
          GiveItemCreate("c2ring02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~!PartyHasItem("c!pp29") !PartyHasItem("cdpp29") !PartyHasItem("bdring07")
        !PartyHasItem("c!pp12") PartyHasItem("cdpp12") PartyHasItem("ring31") PartyHasItem("misc42")
        PartyGoldGT(19999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(20000)      DestroyGold(20000)
          TakePartyItemNum("cdpp12",1)   DestroyItem("cdpp12")
          TakePartyItemNum("ring31",1)   DestroyItem("ring31")
          TakePartyItemNum("misc42",1)   DestroyItem("misc42")
          GiveItemCreate("c2ring02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~!PartyHasItem("c!pp29") !PartyHasItem("cdpp29") !PartyHasItem("bdring07")
        PartyHasItem("c!pp12") PartyHasItem("ring31") PartyHasItem("misc42")
        PartyGoldGT(19999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(20000)      DestroyGold(20000)
          TakePartyItemNum("c!pp12",1)   DestroyItem("c!pp12")
          TakePartyItemNum("ring31",1)   DestroyItem("ring31")
          TakePartyItemNum("misc42",1)   DestroyItem("misc42")
          GiveItemCreate("c2ring02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~!PartyHasItem("c!pp29") !PartyHasItem("cdpp29") PartyHasItem("bdring07") PartyHasItem("ring31") PartyHasItem("misc42")
        PartyGoldGT(19999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(20000)      DestroyGold(20000)
          TakePartyItemNum("bdring07",1) DestroyItem("bdring07")
          TakePartyItemNum("ring31",1)   DestroyItem("ring31")
          TakePartyItemNum("misc42",1)   DestroyItem("misc42")
          GiveItemCreate("c2ring02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~!PartyHasItem("c!pp29") PartyHasItem("cdpp29") PartyHasItem("ring31") PartyHasItem("misc42")
        PartyGoldGT(19999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(20000)      DestroyGold(20000)
          TakePartyItemNum("cdpp29",1)   DestroyItem("cdpp29")
          TakePartyItemNum("ring31",1)   DestroyItem("ring31")
          TakePartyItemNum("misc42",1)   DestroyItem("misc42")
          GiveItemCreate("c2ring02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("c!pp29") PartyHasItem("ring31") PartyHasItem("misc42")
        PartyGoldGT(19999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(20000)      DestroyGold(20000)
          TakePartyItemNum("c!pp29",1)   DestroyItem("c!pp29")
          TakePartyItemNum("ring31",1)   DestroyItem("ring31")
          TakePartyItemNum("misc42",1)   DestroyItem("misc42")
          GiveItemCreate("c2ring02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN roem
    SAY @567842 = @5678942 IF ~~ THEN REPLY @567835 GOTO c2itemupgrade
    IF ~PartyHasItem("ring27") PartyHasItem("ring28") PartyHasItem("ring29")
        PartyHasItem("scrl15") PartyHasItem("scrl05") PartyHasItem("scrl06")
        PartyGoldGT(19999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(20000)      DestroyGold(20000)
          TakePartyItemNum("ring27",1)   DestroyItem("ring27")
          TakePartyItemNum("ring28",1)   DestroyItem("ring28")
          TakePartyItemNum("ring29",1)   DestroyItem("ring29")
          TakePartyItemNum("scrl15",1)   DestroyItem("scrl15")
          TakePartyItemNum("scrl05",1)   DestroyItem("scrl05")
          TakePartyItemNum("scrl06",1)   DestroyItem("scrl06")
          GiveItemCreate("c2ring03",Player1,3,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN soem
    SAY @567843 = @5678943 IF ~~ THEN REPLY @567835 GOTO c2itemupgrade
    IF ~PartyHasItem("staf15") PartyHasItem("staf16") PartyHasItem("staf17")
        PartyGoldGT(19999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(20000)      DestroyGold(20000)
          TakePartyItemNum("staf15",1)   DestroyItem("staf15")
          TakePartyItemNum("staf16",1)   DestroyItem("staf16")
          TakePartyItemNum("staf17",1)   DestroyItem("staf17")
          GiveItemCreate("c2staf01",Player1,2,1,2)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END
          
  IF ~~ THEN BEGIN b_stealth SAY @567844 = @5678944 
    IF ~~ THEN REPLY @567835 GOTO c2itemupgrade
    IF ~PartyHasItem("boot02") PartyHasItem("boot01") !PartyHasItem("bdboot05") PartyHasItem("misc45")
        PartyGoldGT(9999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(10000)      DestroyGold(10000)
          TakePartyItemNum("boot01",1)   DestroyItem("boot01")
          TakePartyItemNum("boot02",1)   DestroyItem("boot02")
          TakePartyItemNum("misc45",1)   DestroyItem("misc45")
          GiveItemCreate("c2boot01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("boot02") PartyHasItem("bdboot05") PartyHasItem("misc45")
        PartyGoldGT(9999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(10000)      DestroyGold(10000)
          TakePartyItemNum("bdboot05",1) DestroyItem("bdboot05")
          TakePartyItemNum("boot02",1)   DestroyItem("boot02")
          TakePartyItemNum("misc45",1)   DestroyItem("misc45")
          GiveItemCreate("c2boot01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN b_north SAY @567845 = @5678945 
    IF ~~ THEN REPLY @567835 GOTO c2itemupgrade
    IF ~PartyHasItem("boot03") PartyHasItem("boot01") !PartyHasItem("bdboot05") PartyHasItem("misc45")
        PartyGoldGT(9999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(10000)      DestroyGold(10000)
          TakePartyItemNum("boot01",1)   DestroyItem("boot01")
          TakePartyItemNum("boot03",1)   DestroyItem("boot03")
          TakePartyItemNum("misc45",1)   DestroyItem("misc45")
          GiveItemCreate("c2boot02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("boot03") PartyHasItem("bdboot05") PartyHasItem("misc45")
        PartyGoldGT(9999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(10000)      DestroyGold(10000)
          TakePartyItemNum("bdboot05",1) DestroyItem("bdboot05")
          TakePartyItemNum("boot03",1)   DestroyItem("boot03")
          TakePartyItemNum("misc45",1)   DestroyItem("misc45")
          GiveItemCreate("c2boot02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN b_ground SAY @567846 = @5678946 
    IF ~~ THEN REPLY @567835 GOTO c2itemupgrade
    IF ~PartyHasItem("boot05") PartyHasItem("boot01") !PartyHasItem("bdboot05") PartyHasItem("misc45")
        PartyGoldGT(9999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(10000)      DestroyGold(10000)
          TakePartyItemNum("boot01",1)   DestroyItem("boot01")
          TakePartyItemNum("boot05",1)   DestroyItem("boot05")
          TakePartyItemNum("misc45",1)   DestroyItem("misc45")
          GiveItemCreate("c2boot04",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("boot05") PartyHasItem("bdboot05") PartyHasItem("misc45")
        PartyGoldGT(9999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(10000)      DestroyGold(10000)
          TakePartyItemNum("bdboot05",1) DestroyItem("bdboot05")
          TakePartyItemNum("boot05",1)   DestroyItem("boot05")
          TakePartyItemNum("misc45",1)   DestroyItem("misc45")
          GiveItemCreate("c2boot04",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN b_avoid SAY @567847 = @5678947 
    IF ~~ THEN REPLY @567835 GOTO c2itemupgrade
    IF ~PartyHasItem("boot04") PartyHasItem("boot01") !PartyHasItem("bdboot05") PartyHasItem("misc45")
        PartyGoldGT(19999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(20000)      DestroyGold(20000)
          TakePartyItemNum("boot01",1)   DestroyItem("boot01")
          TakePartyItemNum("boot04",1)   DestroyItem("boot04")
          TakePartyItemNum("misc45",1)   DestroyItem("misc45")
          GiveItemCreate("c2boot03",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("boot04") PartyHasItem("bdboot05") PartyHasItem("misc45")
        PartyGoldGT(19999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(20000)      DestroyGold(20000)
          TakePartyItemNum("bdboot05",1) DestroyItem("bdboot05")
          TakePartyItemNum("boot04",1)   DestroyItem("boot04")
          TakePartyItemNum("misc45",1)   DestroyItem("misc45")
          GiveItemCreate("c2boot03",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN pitch
    SAY @567848 = @5678948 IF ~~ THEN REPLY @567835 GOTO c2itemupgrade
    IF ~PartyHasItem("blun22") PartyHasItem("blun24")
        PartyGoldGT(14999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(15000)      DestroyGold(15000)
          TakePartyItemNum("blun22",1)   DestroyItem("blun22")
          TakePartyItemNum("blun24",1)   DestroyItem("blun24")
          GiveItemCreate("c2blun01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN fulcrum
    SAY @567849 = @5678949 IF ~~ THEN REPLY @567835 GOTO c2itemupgrade
    IF ~PartyHasItem("blun23") PartyHasItem("blun24")
        PartyGoldGT(14999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(15000)      DestroyGold(15000)
          TakePartyItemNum("blun23",1)   DestroyItem("blun23")
          TakePartyItemNum("blun24",1)   DestroyItem("blun24")
          GiveItemCreate("c2blun03",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN skull
    SAY @567850 = @5678950 IF ~~ THEN REPLY @567835 GOTO c2itemupgrade
    IF ~PartyHasItem("blun18") PartyHasItem("scrl8O") PartyHasItem("potn25")
        PartyGoldGT(14999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(15000)      DestroyGold(15000)
          TakePartyItemNum("blun18",1)   DestroyItem("blun18")
          TakePartyItemNum("scrl8o",1)   DestroyItem("scrl8o")
          TakePartyItemNum("potn25",1)   DestroyItem("potn25")
          GiveItemCreate("c2blun02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN teleo
    SAY @567851 = @5678951 IF ~~ THEN REPLY @567835 GOTO c2itemupgrade
    IF ~PartyHasItem("bow10") PartyHasItem("bow19b") PartyHasItem("potn41")
        NumItemsPartyGT("amul12",3)~
      THEN REPLY @123452 
      DO ~TakePartyItemNum("bow10",1)    DestroyItem("bow10")
          TakePartyItemNum("bow19b",1)   DestroyItem("bow19b")
          TakePartyItemNum("potn41",1)   DestroyItem("potn41")
          TakePartyItemNum("amul12",1)   DestroyItem("amul12")
          TakePartyItemNum("amul12",1)   DestroyItem("amul12")
          TakePartyItemNum("amul12",1)   DestroyItem("amul12")
          TakePartyItemNum("amul12",1)   DestroyItem("amul12")
          GiveItemCreate("c2bow01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("bow10") PartyHasItem("compon10") PartyHasItem("potn41")
        NumItemsPartyGT("amul12",3)~
      THEN REPLY @123453 
      DO ~TakePartyItemNum("bow10",1)    DestroyItem("bow10")
          TakePartyItemNum("compon10",1) DestroyItem("compon10")
          TakePartyItemNum("potn41",1)   DestroyItem("potn41")
          TakePartyItemNum("amul12",1)   DestroyItem("amul12")
          TakePartyItemNum("amul12",1)   DestroyItem("amul12")
          TakePartyItemNum("amul12",1)   DestroyItem("amul12")
          TakePartyItemNum("amul12",1)   DestroyItem("amul12")
          GiveItemCreate("c2bow01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN valy
    SAY @567854 = @5678954 IF ~~ THEN REPLY @567835 GOTO c2itemupgrade
    IF ~PartyHasItem("npchan") PartyHasItem("leat19") PartyHasItem("scrl07")
        PartyGoldGT(9999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(10000)      DestroyGold(10000)
          TakePartyItemNum("npchan",1)   DestroyItem("npchan")
          TakePartyItemNum("leat19",1)   DestroyItem("leat19")
          TakePartyItemNum("scrl07",1)   DestroyItem("scrl07")
          GiveItemCreate("c2valy01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN robe
    SAY @567855 
    IF ~~ GOTO robe_contin
    IF ~Global("CD_SCS_Contingency","MYAREA",1)~ GOTO robe_goi
  END
  
  IF ~~ THEN BEGIN robe_contin SAY @56789955 
    IF ~~ THEN REPLY @567835 GOTO c2itemupgrade
    IF ~PartyHasItem("clck15") 
        PartyHasItem("clck01") !PartyHasItem("cdpp8") !PartyHasItem("c!pp8") 
        PartyHasItem("scrl7u") 
        PartyHasItem("scrl5k")
        PartyGoldGT(19999)~ THEN REPLY @123456 
      DO ~TakePartyGold(20000)      DestroyGold(20000)
          TakePartyItemNum("clck15",1)   DestroyItem("clck15")
          TakePartyItemNum("clck01",1)   DestroyItem("clck01")
          TakePartyItemNum("scrl7u",1)   DestroyItem("scrl7u")
          TakePartyItemNum("scrl5k",1)   DestroyItem("scrl5k")
          GiveItemCreate("c2robe01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("clck15") 
        PartyHasItem("cdpp8") !PartyHasItem("c!pp8")
        PartyHasItem("scrl7u") 
        PartyHasItem("scrl5k")
        PartyGoldGT(19999)~
      THEN REPLY @123456 
      DO ~TakePartyGold(20000)      DestroyGold(20000)
          TakePartyItemNum("clck15",1)   DestroyItem("clck15")
          TakePartyItemNum("cdpp8",1)   DestroyItem("cdpp8")
          TakePartyItemNum("scrl7u",1)   DestroyItem("scrl7u")
          TakePartyItemNum("scrl5k",1)   DestroyItem("scrl5k")
          GiveItemCreate("c2robe01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("clck15") 
        PartyHasItem("c!pp8")
        PartyHasItem("scrl7u") 
        PartyHasItem("scrl5k")
        PartyGoldGT(19999)~
      THEN REPLY @123456 
      DO ~TakePartyGold(20000)      DestroyGold(20000)
          TakePartyItemNum("clck15",1)   DestroyItem("clck15")
          TakePartyItemNum("c!pp8",1)   DestroyItem("c!pp8")
          TakePartyItemNum("scrl7u",1)   DestroyItem("scrl7u")
          TakePartyItemNum("scrl5k",1)   DestroyItem("scrl5k")
          GiveItemCreate("c2robe01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("clck19") !PartyHasItem("clck15")
        PartyHasItem("clck01")  !PartyHasItem("cdpp8") !PartyHasItem("c!pp8")
        PartyHasItem("scrl7u") 
        PartyHasItem("scrl5k")
        PartyGoldGT(19999)~
      THEN REPLY @123456 
      DO ~TakePartyGold(20000)      DestroyGold(20000)
          TakePartyItemNum("clck19",1)   DestroyItem("clck19")
          TakePartyItemNum("clck01",1)   DestroyItem("clck01")
          TakePartyItemNum("scrl7u",1)   DestroyItem("scrl7u")
          TakePartyItemNum("scrl5k",1)   DestroyItem("scrl5k")
          GiveItemCreate("c2robe01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("clck19") !PartyHasItem("clck15")
        PartyHasItem("cdpp8") !PartyHasItem("c!pp8")
        PartyHasItem("scrl7u") 
        PartyHasItem("scrl5k")
        PartyGoldGT(19999)~
      THEN REPLY @123456 
      DO ~TakePartyGold(20000)      DestroyGold(20000)
          TakePartyItemNum("clck19",1)   DestroyItem("clck19")
          TakePartyItemNum("cdpp8",1)   DestroyItem("cdpp8")
          TakePartyItemNum("scrl7u",1)   DestroyItem("scrl7u")
          TakePartyItemNum("scrl5k",1)   DestroyItem("scrl5k")
          GiveItemCreate("c2robe01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("clck19") !PartyHasItem("clck15")
        PartyHasItem("c!pp8")
        PartyHasItem("scrl7u") 
        PartyHasItem("scrl5k")
        PartyGoldGT(19999)~
      THEN REPLY @123456 
      DO ~TakePartyGold(20000)      DestroyGold(20000)
          TakePartyItemNum("clck19",1)   DestroyItem("clck19")
          TakePartyItemNum("c!pp8",1)   DestroyItem("c!pp8")
          TakePartyItemNum("scrl7u",1)   DestroyItem("scrl7u")
          TakePartyItemNum("scrl5k",1)   DestroyItem("scrl5k")
          GiveItemCreate("c2robe01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("clck16") 
        PartyHasItem("clck01")   !PartyHasItem("cdpp8") !PartyHasItem("c!pp8")
        PartyHasItem("scrl7u") 
        PartyHasItem("scrl5k")
        PartyGoldGT(19999)~
      THEN REPLY @123457 
      DO ~TakePartyGold(20000)      DestroyGold(20000)
          TakePartyItemNum("clck16",1)   DestroyItem("clck16")
          TakePartyItemNum("clck01",1)   DestroyItem("clck01")
          TakePartyItemNum("scrl7u",1)   DestroyItem("scrl7u")
          TakePartyItemNum("scrl5k",1)   DestroyItem("scrl5k")
          GiveItemCreate("c2robe02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("clck16") 
        PartyHasItem("cdpp8") !PartyHasItem("c!pp8")
        PartyHasItem("scrl7u") 
        PartyHasItem("scrl5k")
        PartyGoldGT(19999)~
      THEN REPLY @123457 
      DO ~TakePartyGold(20000)      DestroyGold(20000)
          TakePartyItemNum("clck16",1)   DestroyItem("clck16")
          TakePartyItemNum("cdpp8",1)   DestroyItem("cdpp8")
          TakePartyItemNum("scrl7u",1)   DestroyItem("scrl7u")
          TakePartyItemNum("scrl5k",1)   DestroyItem("scrl5k")
          GiveItemCreate("c2robe02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("clck16") 
        PartyHasItem("c!pp8")
        PartyHasItem("scrl7u") 
        PartyHasItem("scrl5k")
        PartyGoldGT(19999)~
      THEN REPLY @123457 
      DO ~TakePartyGold(20000)      DestroyGold(20000)
          TakePartyItemNum("clck16",1)   DestroyItem("clck16")
          TakePartyItemNum("c!pp8",1)   DestroyItem("c!pp8")
          TakePartyItemNum("scrl7u",1)   DestroyItem("scrl7u")
          TakePartyItemNum("scrl5k",1)   DestroyItem("scrl5k")
          GiveItemCreate("c2robe02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("clck17") 
        PartyHasItem("clck01")   !PartyHasItem("cdpp8") !PartyHasItem("c!pp8")
        PartyHasItem("scrl7u") 
        PartyHasItem("scrl5k")
        PartyGoldGT(19999)~
      THEN REPLY @123458 
      DO ~TakePartyGold(20000)      DestroyGold(20000)
          TakePartyItemNum("clck17",1)   DestroyItem("clck17")
          TakePartyItemNum("clck01",1)   DestroyItem("clck01")
          TakePartyItemNum("scrl7u",1)   DestroyItem("scrl7u")
          TakePartyItemNum("scrl5k",1)   DestroyItem("scrl5k")
          GiveItemCreate("c2robe03",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("clck17") 
        PartyHasItem("cdpp8") !PartyHasItem("c!pp8")
        PartyHasItem("scrl7u") 
        PartyHasItem("scrl5k")
        PartyGoldGT(19999)~
      THEN REPLY @123458 
      DO ~TakePartyGold(20000)      DestroyGold(20000)
          TakePartyItemNum("clck17",1)   DestroyItem("clck17")
          TakePartyItemNum("cdpp8",1)   DestroyItem("cdpp8")
          TakePartyItemNum("scrl7u",1)   DestroyItem("scrl7u")
          TakePartyItemNum("scrl5k",1)   DestroyItem("scrl5k")
          GiveItemCreate("c2robe03",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("clck17") 
        PartyHasItem("c!pp8")
        PartyHasItem("scrl7u") 
        PartyHasItem("scrl5k")
        PartyGoldGT(19999)~
      THEN REPLY @123458 
      DO ~TakePartyGold(20000)      DestroyGold(20000)
          TakePartyItemNum("clck17",1)   DestroyItem("clck17")
          TakePartyItemNum("c!pp8",1)   DestroyItem("c!pp8")
          TakePartyItemNum("scrl7u",1)   DestroyItem("scrl7u")
          TakePartyItemNum("scrl5k",1)   DestroyItem("scrl5k")
          GiveItemCreate("c2robe03",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN robe_goi SAY @56789956 
    IF ~~ THEN REPLY @567835 GOTO c2itemupgrade
    IF ~PartyHasItem("clck15") 
        PartyHasItem("clck01") !PartyHasItem("cdpp8") !PartyHasItem("c!pp8") 
        PartyHasItem("scrl7f") 
        PartyHasItem("scrl5k")
        PartyGoldGT(19999)~ THEN REPLY @123456 
      DO ~TakePartyGold(20000)      DestroyGold(20000)
          TakePartyItemNum("clck15",1)   DestroyItem("clck15")
          TakePartyItemNum("clck01",1)   DestroyItem("clck01")
          TakePartyItemNum("scrl7f",1)   DestroyItem("scrl7f")
          TakePartyItemNum("scrl5k",1)   DestroyItem("scrl5k")
          GiveItemCreate("c2robe01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("clck15") 
        PartyHasItem("cdpp8") !PartyHasItem("c!pp8")
        PartyHasItem("scrl7f") 
        PartyHasItem("scrl5k")
        PartyGoldGT(19999)~
      THEN REPLY @123456 
      DO ~TakePartyGold(20000)      DestroyGold(20000)
          TakePartyItemNum("clck15",1)   DestroyItem("clck15")
          TakePartyItemNum("cdpp8",1)   DestroyItem("cdpp8")
          TakePartyItemNum("scrl7f",1)   DestroyItem("scrl7f")
          TakePartyItemNum("scrl5k",1)   DestroyItem("scrl5k")
          GiveItemCreate("c2robe01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("clck15") 
        PartyHasItem("c!pp8")
        PartyHasItem("scrl7f") 
        PartyHasItem("scrl5k")
        PartyGoldGT(19999)~
      THEN REPLY @123456 
      DO ~TakePartyGold(20000)      DestroyGold(20000)
          TakePartyItemNum("clck15",1)   DestroyItem("clck15")
          TakePartyItemNum("c!pp8",1)   DestroyItem("c!pp8")
          TakePartyItemNum("scrl7f",1)   DestroyItem("scrl7f")
          TakePartyItemNum("scrl5k",1)   DestroyItem("scrl5k")
          GiveItemCreate("c2robe01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("clck19") !PartyHasItem("clck15")
        PartyHasItem("clck01")  !PartyHasItem("cdpp8") !PartyHasItem("c!pp8")
        PartyHasItem("scrl7f") 
        PartyHasItem("scrl5k")
        PartyGoldGT(19999)~
      THEN REPLY @123456 
      DO ~TakePartyGold(20000)      DestroyGold(20000)
          TakePartyItemNum("clck19",1)   DestroyItem("clck19")
          TakePartyItemNum("clck01",1)   DestroyItem("clck01")
          TakePartyItemNum("scrl7f",1)   DestroyItem("scrl7f")
          TakePartyItemNum("scrl5k",1)   DestroyItem("scrl5k")
          GiveItemCreate("c2robe01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("clck19") !PartyHasItem("clck15")
        PartyHasItem("cdpp8") !PartyHasItem("c!pp8")
        PartyHasItem("scrl7f") 
        PartyHasItem("scrl5k")
        PartyGoldGT(19999)~
      THEN REPLY @123456 
      DO ~TakePartyGold(20000)      DestroyGold(20000)
          TakePartyItemNum("clck19",1)   DestroyItem("clck19")
          TakePartyItemNum("cdpp8",1)   DestroyItem("cdpp8")
          TakePartyItemNum("scrl7f",1)   DestroyItem("scrl7f")
          TakePartyItemNum("scrl5k",1)   DestroyItem("scrl5k")
          GiveItemCreate("c2robe01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("clck19") !PartyHasItem("clck15")
        PartyHasItem("c!pp8")
        PartyHasItem("scrl7f") 
        PartyHasItem("scrl5k")
        PartyGoldGT(19999)~
      THEN REPLY @123456 
      DO ~TakePartyGold(20000)      DestroyGold(20000)
          TakePartyItemNum("clck19",1)   DestroyItem("clck19")
          TakePartyItemNum("c!pp8",1)   DestroyItem("c!pp8")
          TakePartyItemNum("scrl7f",1)   DestroyItem("scrl7f")
          TakePartyItemNum("scrl5k",1)   DestroyItem("scrl5k")
          GiveItemCreate("c2robe01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("clck16") 
        PartyHasItem("clck01")   !PartyHasItem("cdpp8") !PartyHasItem("c!pp8")
        PartyHasItem("scrl7f") 
        PartyHasItem("scrl5k")
        PartyGoldGT(19999)~
      THEN REPLY @123457 
      DO ~TakePartyGold(20000)      DestroyGold(20000)
          TakePartyItemNum("clck16",1)   DestroyItem("clck16")
          TakePartyItemNum("clck01",1)   DestroyItem("clck01")
          TakePartyItemNum("scrl7f",1)   DestroyItem("scrl7f")
          TakePartyItemNum("scrl5k",1)   DestroyItem("scrl5k")
          GiveItemCreate("c2robe02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("clck16") 
        PartyHasItem("cdpp8") !PartyHasItem("c!pp8")
        PartyHasItem("scrl7f") 
        PartyHasItem("scrl5k")
        PartyGoldGT(19999)~
      THEN REPLY @123457 
      DO ~TakePartyGold(20000)      DestroyGold(20000)
          TakePartyItemNum("clck16",1)   DestroyItem("clck16")
          TakePartyItemNum("cdpp8",1)   DestroyItem("cdpp8")
          TakePartyItemNum("scrl7f",1)   DestroyItem("scrl7f")
          TakePartyItemNum("scrl5k",1)   DestroyItem("scrl5k")
          GiveItemCreate("c2robe02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("clck16") 
        PartyHasItem("c!pp8")
        PartyHasItem("scrl7f") 
        PartyHasItem("scrl5k")
        PartyGoldGT(19999)~
      THEN REPLY @123457 
      DO ~TakePartyGold(20000)      DestroyGold(20000)
          TakePartyItemNum("clck16",1)   DestroyItem("clck16")
          TakePartyItemNum("c!pp8",1)   DestroyItem("c!pp8")
          TakePartyItemNum("scrl7f",1)   DestroyItem("scrl7f")
          TakePartyItemNum("scrl5k",1)   DestroyItem("scrl5k")
          GiveItemCreate("c2robe02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("clck17") 
        PartyHasItem("clck01")   !PartyHasItem("cdpp8") !PartyHasItem("c!pp8")
        PartyHasItem("scrl7f") 
        PartyHasItem("scrl5k")
        PartyGoldGT(19999)~
      THEN REPLY @123458 
      DO ~TakePartyGold(20000)      DestroyGold(20000)
          TakePartyItemNum("clck17",1)   DestroyItem("clck17")
          TakePartyItemNum("clck01",1)   DestroyItem("clck01")
          TakePartyItemNum("scrl7f",1)   DestroyItem("scrl7f")
          TakePartyItemNum("scrl5k",1)   DestroyItem("scrl5k")
          GiveItemCreate("c2robe03",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("clck17") 
        PartyHasItem("cdpp8") !PartyHasItem("c!pp8")
        PartyHasItem("scrl7f") 
        PartyHasItem("scrl5k")
        PartyGoldGT(19999)~
      THEN REPLY @123458 
      DO ~TakePartyGold(20000)      DestroyGold(20000)
          TakePartyItemNum("clck17",1)   DestroyItem("clck17")
          TakePartyItemNum("cdpp8",1)   DestroyItem("cdpp8")
          TakePartyItemNum("scrl7f",1)   DestroyItem("scrl7f")
          TakePartyItemNum("scrl5k",1)   DestroyItem("scrl5k")
          GiveItemCreate("c2robe03",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("clck17") 
        PartyHasItem("c!pp8")
        PartyHasItem("scrl7f") 
        PartyHasItem("scrl5k")
        PartyGoldGT(19999)~
      THEN REPLY @123458 
      DO ~TakePartyGold(20000)      DestroyGold(20000)
          TakePartyItemNum("clck17",1)   DestroyItem("clck17")
          TakePartyItemNum("c!pp8",1)   DestroyItem("c!pp8")
          TakePartyItemNum("scrl7f",1)   DestroyItem("scrl7f")
          TakePartyItemNum("scrl5k",1)   DestroyItem("scrl5k")
          GiveItemCreate("c2robe03",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN cita
    SAY @567859 = @5678959 IF ~~ THEN REPLY @567835 GOTO c2itemupgrade
    IF ~PartyHasItem("helm04") PartyHasItem("helm06") 
        NumItemsPartyGT("misc36",3) PartyGoldGT(9999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(10000)      DestroyGold(10000)
          TakePartyItemNum("helm04",1)   DestroyItem("helm04")
          TakePartyItemNum("helm06",1)   DestroyItem("helm06")
          TakePartyItemNum("misc36",1)   DestroyItem("misc36")
          TakePartyItemNum("misc36",1)   DestroyItem("misc36")
          TakePartyItemNum("misc36",1)   DestroyItem("misc36")
          TakePartyItemNum("misc36",1)   DestroyItem("misc36")
          GiveItemCreate("c2helm01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN will
    SAY @567860 = @5678960 IF ~~ THEN REPLY @567835 GOTO c2itemupgrade
    IF ~PartyHasItem("helm06") 
        NumItemsPartyGT("misc9y",1) PartyGoldGT(9999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(10000)      DestroyGold(10000)
          TakePartyItemNum("helm06",1)   DestroyItem("helm06")
          TakePartyItemNum("misc9y",1)   DestroyItem("misc9y")
          TakePartyItemNum("misc9y",1)   DestroyItem("misc9y")
          GiveItemCreate("c2helm02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN aeger
    SAY @567861 = @5678961 IF ~~ THEN REPLY @567835 GOTO c2itemupgrade
    IF ~PartyHasItem("leat20") PartyHasItem("scrl8e") 
        PartyGoldGT(14999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(15000)      DestroyGold(15000)
          TakePartyItemNum("leat20",1)   DestroyItem("leat20")
          TakePartyItemNum("scrl8e",1)   DestroyItem("scrl8e")
          GiveItemCreate("c2hide01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN keld_a
    SAY @567862 = @5678962 IF ~~ THEN REPLY @567835 GOTO c2itemupgrade
    IF ~PartyHasItem("npplat") PartyHasItem("plat16") 
        PartyGoldGT(19999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(20000)      DestroyGold(20000)
          TakePartyItemNum("npplat",1)   DestroyItem("npplat")
          TakePartyItemNum("plat16",1)   DestroyItem("plat16")
          GiveItemCreate("c2keld01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN ankheg
    SAY @567863 = @5678963 IF ~~ THEN REPLY @567835 GOTO c2itemupgrade
    IF ~PartyHasItem("plat06") PartyHasItem("scrl03") PartyHasItem("scrl6y") 
        PartyGoldGT(4999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(5000)      DestroyGold(5000)
          TakePartyItemNum("plat06",1)   DestroyItem("plat06")
          TakePartyItemNum("scrl03",1)   DestroyItem("scrl03")
          TakePartyItemNum("scrl6y",1)   DestroyItem("scrl6y")
          GiveItemCreate("c2plat01",Player1,3,3,3)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN harmony
    SAY @567864 = @5678964 IF ~~ THEN REPLY @567835 GOTO c2itemupgrade
    IF ~PartyHasItem("shld25") PartyHasItem("misc9x") PartyHasItem("misc6z") 
        NumItemsPartyGT("misc9y",1) PartyGoldGT(9999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(10000)      DestroyGold(10000)
          TakePartyItemNum("shld25",1)   DestroyItem("shld25")
          TakePartyItemNum("misc9x",1)   DestroyItem("misc9x")
          TakePartyItemNum("misc6z",1)   DestroyItem("misc6z")
          TakePartyItemNum("misc9y",1)   DestroyItem("misc9y")
          TakePartyItemNum("misc9y",1)   DestroyItem("misc9y")
          GiveItemCreate("c2shld01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN spear1
    SAY @567865 = @5678965 IF ~~ THEN REPLY @567835 GOTO c2itemupgrade
    IF ~PartyHasItem("sper06") PartyHasItem("misc45") PartyGoldGT(9999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(10000)      DestroyGold(10000)
          TakePartyItemNum("sper06",1)   DestroyItem("sper06")
          TakePartyItemNum("misc45",1)   DestroyItem("misc45")
          GiveItemCreate("c2sper01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN spear2
    SAY @567866 = @5678966 IF ~~ THEN REPLY @567835 GOTO c2itemupgrade
    IF ~PartyHasItem("sper07") PartyHasItem("misc45") PartyGoldGT(9999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(10000)      DestroyGold(10000)
          TakePartyItemNum("sper07",1)   DestroyItem("sper07")
          TakePartyItemNum("misc45",1)   DestroyItem("misc45")
          GiveItemCreate("c2sper02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN spear3
    SAY @567867 = @5678967 IF ~~ THEN REPLY @567835 GOTO c2itemupgrade
    IF ~PartyHasItem("sper08") PartyHasItem("misc45") PartyGoldGT(14999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(15000)      DestroyGold(15000)
          TakePartyItemNum("sper08",1)   DestroyItem("sper08")
          TakePartyItemNum("misc45",1)   DestroyItem("misc45")
          GiveItemCreate("c2sper03",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN stafw
    SAY @567868 = @5678968 IF ~~ THEN REPLY @567835 GOTO c2itemupgrade
    IF ~PartyHasItem("staf14") PartyHasItem("ring03") PartyHasItem("ring06")
        PartyGoldGT(19999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(20000)      DestroyGold(20000)
          TakePartyItemNum("staf14",1)   DestroyItem("staf14")
          TakePartyItemNum("ring03",1)   DestroyItem("ring03")
          TakePartyItemNum("ring06",1)   DestroyItem("ring06")
          GiveItemCreate("c2staf02",Player1,6,6,6)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN day
    SAY @567869 = @5678969 IF ~~ THEN REPLY @567835 GOTO c2itemupgrade
    IF ~PartyHasItem("sw1h31") 
        NumItemsPartyGT("scrl09",3)
        NumItemsPartyGT("miscau",1)
        NumItemsPartyGT("misc41",1)
        PartyGoldGT(14999)~
      THEN REPLY @567836 
      DO ~TakePartyItemNum("sw1h31",1)   DestroyItem("sw1h31")
          TakePartyItemNum("scrl09",1)   DestroyItem("scrl09")
          TakePartyItemNum("scrl09",1)   DestroyItem("scrl09")
          TakePartyItemNum("scrl09",1)   DestroyItem("scrl09")
          TakePartyItemNum("scrl09",1)   DestroyItem("scrl09")
          TakePartyItemNum("miscau",1)   DestroyItem("miscau")
          TakePartyItemNum("miscau",1)   DestroyItem("miscau")
          TakePartyItemNum("misc41",1)   DestroyItem("misc41")
          TakePartyItemNum("misc41",1)   DestroyItem("misc41")
          TakePartyGold(15000)           DestroyGold(15000)
          GiveItemCreate("c2sw1h01",Player1,2,2,2)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN cf
    SAY @567870 = @5678970 IF ~~ THEN REPLY @567835 GOTO c2itemupgrade
    IF ~PartyHasItem("sw1h51") PartyHasItem("wand07") PartyHasItem("misc6m") !PartyHasItem("plot02i") !PartyHasItem("plot02j")
        PartyGoldGT(19999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(20000)      DestroyGold(20000)
          TakePartyItemNum("sw1h51",1)   DestroyItem("sw1h51")
          TakePartyItemNum("misc6m",1)   DestroyItem("misc6m")
          TakePartyItemNum("wand07",1)   DestroyItem("wand07")
          GiveItemCreate("c2sw1h02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("sw1h51") PartyHasItem("wand07") PartyHasItem("plot02i") !PartyHasItem("plot02j")
        PartyGoldGT(19999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(20000)      DestroyGold(20000)
          TakePartyItemNum("sw1h51",1)   DestroyItem("sw1h51")
          TakePartyItemNum("plot02i",1)   DestroyItem("plot02i")
          TakePartyItemNum("wand07",1)   DestroyItem("wand07")
          GiveItemCreate("c2sw1h02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("sw1h51") PartyHasItem("wand07") PartyHasItem("plot02j")
        PartyGoldGT(19999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(20000)      DestroyGold(20000)
          TakePartyItemNum("sw1h51",1)   DestroyItem("sw1h51")
          TakePartyItemNum("plot02j",1)   DestroyItem("plot02j")
          TakePartyItemNum("wand07",1)   DestroyItem("wand07")
          GiveItemCreate("c2sw1h02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("cdkt23") PartyHasItem("wand07") PartyHasItem("misc6m") !PartyHasItem("plot02i") !PartyHasItem("plot02j")
        PartyGoldGT(19999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(20000)      DestroyGold(20000)
          TakePartyItemNum("cdkt23",1)   DestroyItem("cdkt23")
          TakePartyItemNum("misc6m",1)   DestroyItem("misc6m")
          TakePartyItemNum("wand07",1)   DestroyItem("wand07")
          GiveItemCreate("c2sw1h02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("cdkt23") PartyHasItem("wand07") PartyHasItem("plot02i") !PartyHasItem("plot02j")
        PartyGoldGT(19999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(20000)      DestroyGold(20000)
          TakePartyItemNum("cdkt23",1)   DestroyItem("cdkt23")
          TakePartyItemNum("plot02i",1)   DestroyItem("plot02i")
          TakePartyItemNum("wand07",1)   DestroyItem("wand07")
          GiveItemCreate("c2sw1h02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("cdkt23") PartyHasItem("wand07") PartyHasItem("plot02j")
        PartyGoldGT(19999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(20000)      DestroyGold(20000)
          TakePartyItemNum("cdkt23",1)   DestroyItem("cdkt23")
          TakePartyItemNum("plot02j",1)   DestroyItem("plot02j")
          TakePartyItemNum("wand07",1)   DestroyItem("wand07")
          GiveItemCreate("c2sw1h02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("c!kt23") PartyHasItem("wand07") PartyHasItem("misc6m") !PartyHasItem("plot02i") !PartyHasItem("plot02j")
        PartyGoldGT(19999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(20000)      DestroyGold(20000)
          TakePartyItemNum("c!kt23",1)   DestroyItem("c!kt23")
          TakePartyItemNum("misc6m",1)   DestroyItem("misc6m")
          TakePartyItemNum("wand07",1)   DestroyItem("wand07")
          GiveItemCreate("c2sw1h02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("c!kt23") PartyHasItem("wand07") PartyHasItem("plot02i") !PartyHasItem("plot02j")
        PartyGoldGT(19999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(20000)      DestroyGold(20000)
          TakePartyItemNum("c!kt23",1)   DestroyItem("c!kt23")
          TakePartyItemNum("plot02i",1)   DestroyItem("plot02i")
          TakePartyItemNum("wand07",1)   DestroyItem("wand07")
          GiveItemCreate("c2sw1h02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("c!kt23") PartyHasItem("wand07") PartyHasItem("plot02j")
        PartyGoldGT(19999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(20000)      DestroyGold(20000)
          TakePartyItemNum("c!kt23",1)   DestroyItem("c!kt23")
          TakePartyItemNum("plot02j",1)   DestroyItem("plot02j")
          TakePartyItemNum("wand07",1)   DestroyItem("wand07")
          GiveItemCreate("c2sw1h02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN mazzy
    SAY @567871 = @5678971 IF ~~ THEN REPLY @567835 GOTO c2itemupgrade
    IF ~PartyHasItem("npsw01") 
        Reputation(Player1,20)
        PartyGoldGT(14999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(15000)      DestroyGold(15000)
          TakePartyItemNum("npsw01",1)   DestroyItem("npsw01")
          GiveItemCreate("c2mazz01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN keld_s
    SAY @567872 = @5678972 IF ~~ THEN REPLY @567835 GOTO c2itemupgrade
    IF ~PartyHasItem("npsw03") PartyHasItem("misc6m") 
        NumItemsPartyGT("scrl1e",4)
        Reputation(Player1,20)
        PartyGoldGT(14999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(15000)      DestroyGold(15000)
          TakePartyItemNum("npsw03",1)   DestroyItem("npsw03")
          TakePartyItemNum("misc6m",1)   DestroyItem("misc6m")
          TakePartyItemNum("scrl1e",1)   DestroyItem("scrl1e")
          TakePartyItemNum("scrl1e",1)   DestroyItem("scrl1e")
          TakePartyItemNum("scrl1e",1)   DestroyItem("scrl1e")
          TakePartyItemNum("scrl1e",1)   DestroyItem("scrl1e")
          TakePartyItemNum("scrl1e",1)   DestroyItem("scrl1e")
          GiveItemCreate("c2keld02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN anomen
    SAY @567873 = @5678973 IF ~~ THEN REPLY @567835 GOTO c2itemupgrade
    IF ~PartyHasItem("npshld") 
        PartyHasItem("shld27") 
        PartyGoldGT(14999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(15000)      DestroyGold(15000)
          TakePartyItemNum("npshld",1)   DestroyItem("npshld")
          TakePartyItemNum("shld27",1)   DestroyItem("shld27")
          GiveItemCreate("c2anom01",Player1,2,2,2)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN lil
    SAY @567874 = @5678974 IF ~~ THEN REPLY @567835 GOTO c2itemupgrade
    IF ~PartyHasItem("sw2h14") 
        PartyHasItem("misc9x") 
        PartyGoldGT(19999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(20000)      DestroyGold(20000)
          TakePartyItemNum("sw2h14",1)   DestroyItem("sw2h14")
          TakePartyItemNum("misc9x",1)   DestroyItem("misc9x")
          GiveItemCreate("c2sw2h01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN dagg
    SAY @567875 = @5678975 IF ~~ THEN REPLY @567835 GOTO c2itemupgrade
    IF ~PartyHasItem("dagg14") 
        PartyHasItem("dagg13") 
        NumItemsPartyGT("potn36",3)
        PartyGoldGT(19999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(20000)      DestroyGold(20000)
          TakePartyItemNum("dagg14",1)   DestroyItem("dagg14")
          TakePartyItemNum("dagg13",1)   DestroyItem("dagg13")
          TakePartyItemNum("potn36",1)   DestroyItem("potn36")
          TakePartyItemNum("potn36",1)   DestroyItem("potn36")
          TakePartyItemNum("potn36",1)   DestroyItem("potn36")
          TakePartyItemNum("potn36",1)   DestroyItem("potn36")
          GiveItemCreate("c2dagg01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN quiv
    SAY @567879 = @5678979 IF ~~ THEN REPLY @567835 GOTO c2itemupgrade
    IF ~PartyHasItem("quiver03") NumItemsPartyGT("arow15",39)
        PartyGoldGT(39999)~
      THEN REPLY @567880 
      DO ~TakePartyItemNum("quiver03",1) DestroyItem("quiver03")
          TakePartyItemNum("arow15",40) DestroyItem("arow15")
          TakePartyGold(40000)      DestroyGold(40000)
          GiveItemCreate("c2quiv01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("quiver04") NumItemsPartyGT("bolt09",39)
        PartyGoldGT(39999)~
      THEN REPLY @567881 
      DO ~TakePartyItemNum("quiver04",1) DestroyItem("quiver04")
          TakePartyItemNum("bolt09",40) DestroyItem("bolt09")
          TakePartyGold(40000)      DestroyGold(40000)
          GiveItemCreate("c2quiv02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("quiver06") NumItemsPartyGT("bull05",39)
        PartyGoldGT(39999)~
      THEN REPLY @567882 
      DO ~TakePartyItemNum("quiver06",1) DestroyItem("quiver06")
          TakePartyItemNum("bull05",40) DestroyItem("bull05")
          TakePartyGold(40000)      DestroyGold(40000)
          GiveItemCreate("c2quiv03",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN flesh
    SAY @567883 = @5678983 IF ~~ THEN REPLY @567835 GOTO c2itemupgrade
    IF ~PartyHasItem("leat21") 
        PartyHasItem("amsoul01")
        PartyHasItem("scrl07")
        PartyGoldGT(19999)~
      THEN REPLY @567836 
      DO ~TakePartyItemNum("leat21",1) DestroyItem("leat21")
          TakePartyItemNum("amsoul01",1) DestroyItem("amsoul01")
          TakePartyItemNum("scrl07",1) DestroyItem("scrl07")
          TakePartyGold(20000)      DestroyGold(20000)
          GiveItemCreate("c2leat01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN reaver
    SAY @567884 = @5678984 IF ~~ THEN REPLY @567835 GOTO c2itemupgrade
    IF ~PartyHasItem("sw2h08") 
        PartyHasItem("compon15")
        PartyHasItem("sw2h10")
        PartyGoldGT(19999)~
      THEN REPLY @567836 
      DO ~TakePartyItemNum("sw2h08",1) DestroyItem("sw2h08")
          TakePartyItemNum("compon15",1) DestroyItem("compon15")
          TakePartyItemNum("sw2h10",1) DestroyItem("sw2h10")
          TakePartyGold(20000)      DestroyGold(20000)
          GiveItemCreate("c2sw2h02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN buckler
    SAY @567885 = @5678985 IF ~~ THEN REPLY @567835 GOTO c2itemupgrade
    IF ~PartyHasItem("shld17") 
        PartyHasItem("key23") 
        NumItemsPartyGT("misc18",4)
        PartyGoldGT(9999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(10000)      DestroyGold(10000)
          TakePartyItemNum("shld17",1)   DestroyItem("shld17")
          TakePartyItemNum("key23",1)   DestroyItem("key23")
          TakePartyItemNum("misc18",5)   DestroyItem("misc18")
          GiveItemCreate("c2shld02",Player1,2,2,2)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN thief
    SAY @567886 = @5678986 IF ~~ THEN REPLY @567835 GOTO c2itemupgrade
    IF ~PartyHasItem("brac17") PartyHasItem("brac14") 
        PartyHasItem("ring35") PartyHasItem("ring36") 
        NumItemsPartyGT("ring06",1)
        PartyGoldGT(4999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(5000)      DestroyGold(5000)
          TakePartyItemNum("brac17",1)   DestroyItem("brac17")
          TakePartyItemNum("brac14",1)   DestroyItem("brac14")
          TakePartyItemNum("ring35",1)   DestroyItem("ring35")
          TakePartyItemNum("ring36",1)   DestroyItem("ring36")
          TakePartyItemNum("ring06",1)   DestroyItem("ring06")
          TakePartyItemNum("ring06",1)   DestroyItem("ring06")
          GiveItemCreate("c2brac01",Player1,2,2,2)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN ilmater
    SAY @567887 = @5678987 
  IF ~~ THEN REPLY @567835 GOTO c2itemupgrade
  IF ~PartyHasItem("amul22") PartyHasItem("amul24") 
    PartyHasItem("amul25")
    NumItemsPartyGT("amul14",1)
    PartyGoldGT(9999)~
  THEN REPLY @567836 
    DO ~TakePartyGold(10000)      DestroyGold(10000)
    TakePartyItemNum("amul22",1)  DestroyItem("amul22")
    TakePartyItemNum("amul24",1)  DestroyItem("amul24")
    TakePartyItemNum("amul25",1)  DestroyItem("amul25")
    TakePartyItemNum("amul14",1)  DestroyItem("amul14")
    TakePartyItemNum("amul14",1)  DestroyItem("amul14")
    GiveItemCreate("c2amul01",Player1,1,1,1)
    CreateVisualEffect("spcrtwpn",[401.348])~ EXIT

  IF ~PartyHasItem("amul22") PartyHasItem("amul24") 
    PartyHasItem("amul25")
    NumItemsPartyGT("bdamul24",1)
    !NumItemsPartyGT("amul14",1)
    PartyGoldGT(9999)~
  THEN REPLY @567836 
    DO ~TakePartyGold(10000)      DestroyGold(10000)
    TakePartyItemNum("amul22",1)   DestroyItem("amul22")
    TakePartyItemNum("amul24",1)   DestroyItem("amul24")
    TakePartyItemNum("amul25",1)   DestroyItem("amul25")
    TakePartyItemNum("bdamul24",1) DestroyItem("bdamul24")
    TakePartyItemNum("bdamul24",1) DestroyItem("bdamul24")
    GiveItemCreate("c2amul01",Player1,1,1,1)
    CreateVisualEffect("spcrtwpn",[401.348])~ EXIT

  IF ~PartyHasItem("amul22") PartyHasItem("amul24") 
    PartyHasItem("amul25")
    NumItemsPartyGT("cdpp7",1)
    !NumItemsPartyGT("amul14",1)
    !NumItemsPartyGT("bdamul24",1)
    PartyGoldGT(9999)~
  THEN REPLY @567836 
    DO ~TakePartyGold(10000)      DestroyGold(10000)
    TakePartyItemNum("amul22",1)   DestroyItem("amul22")
    TakePartyItemNum("amul24",1)   DestroyItem("amul24")
    TakePartyItemNum("amul25",1)   DestroyItem("amul25")
    TakePartyItemNum("cdpp7",1) DestroyItem("cdpp7")
    TakePartyItemNum("cdpp7",1) DestroyItem("cdpp7")
    GiveItemCreate("c2amul01",Player1,1,1,1)
    CreateVisualEffect("spcrtwpn",[401.348])~ EXIT

  IF ~PartyHasItem("amul22") PartyHasItem("amul24") 
    PartyHasItem("amul25")
    NumItemsPartyGT("c!pp7",1)
    !NumItemsPartyGT("amul14",1)
    !NumItemsPartyGT("bdamul24",1)
    !NumItemsPartyGT("cdpp7",1)
    PartyGoldGT(9999)~
  THEN REPLY @567836 
    DO ~TakePartyGold(10000)      DestroyGold(10000)
    TakePartyItemNum("amul22",1)   DestroyItem("amul22")
    TakePartyItemNum("amul24",1)   DestroyItem("amul24")
    TakePartyItemNum("amul25",1)   DestroyItem("amul25")
    TakePartyItemNum("c!pp7",1) DestroyItem("c!pp7")
    TakePartyItemNum("c!pp7",1) DestroyItem("c!pp7")
    GiveItemCreate("c2amul01",Player1,1,1,1)
    CreateVisualEffect("spcrtwpn",[401.348])~ EXIT

  IF ~PartyHasItem("amul22") PartyHasItem("amul24") 
    PartyHasItem("amul25")
    NumItemsPartyGT("cdpp26",1)
    !NumItemsPartyGT("amul14",1)
    !NumItemsPartyGT("bdamul24",1)
    !NumItemsPartyGT("cdpp7",1)
    !NumItemsPartyGT("c!pp7",1)
    PartyGoldGT(9999)~
  THEN REPLY @567836 
    DO ~TakePartyGold(10000)      DestroyGold(10000)
    TakePartyItemNum("amul22",1)   DestroyItem("amul22")
    TakePartyItemNum("amul24",1)   DestroyItem("amul24")
    TakePartyItemNum("amul25",1)   DestroyItem("amul25")
    TakePartyItemNum("cdpp26",1) DestroyItem("cdpp26")
    TakePartyItemNum("cdpp26",1) DestroyItem("cdpp26")
    GiveItemCreate("c2amul01",Player1,1,1,1)
    CreateVisualEffect("spcrtwpn",[401.348])~ EXIT

  IF ~PartyHasItem("amul22") PartyHasItem("amul24") 
    PartyHasItem("amul25")
    NumItemsPartyGT("c!pp26",1)
    !NumItemsPartyGT("amul14",1)
    !NumItemsPartyGT("bdamul24",1)
    !NumItemsPartyGT("cdpp7",1)
    !NumItemsPartyGT("c!pp7",1)
    !NumItemsPartyGT("cdpp26",1)
    PartyGoldGT(9999)~
  THEN REPLY @567836 
    DO ~TakePartyGold(10000)      DestroyGold(10000)
    TakePartyItemNum("amul22",1)   DestroyItem("amul22")
    TakePartyItemNum("amul24",1)   DestroyItem("amul24")
    TakePartyItemNum("amul25",1)   DestroyItem("amul25")
    TakePartyItemNum("c!pp26",1) DestroyItem("c!pp26")
    TakePartyItemNum("c!pp26",1) DestroyItem("c!pp26")
    GiveItemCreate("c2amul01",Player1,1,1,1)
    CreateVisualEffect("spcrtwpn",[401.348])~ EXIT

  IF ~PartyHasItem("amul22") PartyHasItem("amul24") 
    PartyHasItem("amul25")
    NumItemsParty("amul14",1)
    NumItemsParty("bdamul24",1)
    PartyGoldGT(9999)~
  THEN REPLY @567836 
    DO ~TakePartyGold(10000)      DestroyGold(10000)
    TakePartyItemNum("amul22",1)   DestroyItem("amul22")
    TakePartyItemNum("amul24",1)   DestroyItem("amul24")
    TakePartyItemNum("amul25",1)   DestroyItem("amul25")
    TakePartyItemNum("amul14",1) DestroyItem("amul14")
    TakePartyItemNum("bdamul24",1) DestroyItem("bdamul24")
    GiveItemCreate("c2amul01",Player1,1,1,1)
    CreateVisualEffect("spcrtwpn",[401.348])~ EXIT

  IF ~PartyHasItem("amul22") PartyHasItem("amul24") 
    PartyHasItem("amul25")
    NumItemsParty("amul14",1)
    NumItemsParty("c!pp7",1)
    !PartyHasItem("bdamul24")
    PartyGoldGT(9999)~
  THEN REPLY @567836 
    DO ~TakePartyGold(10000)      DestroyGold(10000)
    TakePartyItemNum("amul22",1)   DestroyItem("amul22")
    TakePartyItemNum("amul24",1)   DestroyItem("amul24")
    TakePartyItemNum("amul25",1)   DestroyItem("amul25")
    TakePartyItemNum("amul14",1) DestroyItem("amul14")
    TakePartyItemNum("c!pp7",1) DestroyItem("c!pp7")
    GiveItemCreate("c2amul01",Player1,1,1,1)
    CreateVisualEffect("spcrtwpn",[401.348])~ EXIT

  IF ~PartyHasItem("amul22") PartyHasItem("amul24") 
    PartyHasItem("amul25")
    NumItemsParty("amul14",1)
    NumItemsParty("cdpp7",1)
    !PartyHasItem("bdamul24")
    !PartyHasItem("c!pp7")
    PartyGoldGT(9999)~
  THEN REPLY @567836 
    DO ~TakePartyGold(10000)      DestroyGold(10000)
    TakePartyItemNum("amul22",1)   DestroyItem("amul22")
    TakePartyItemNum("amul24",1)   DestroyItem("amul24")
    TakePartyItemNum("amul25",1)   DestroyItem("amul25")
    TakePartyItemNum("amul14",1) DestroyItem("amul14")
    TakePartyItemNum("cdpp7",1) DestroyItem("cdpp7")
    GiveItemCreate("c2amul01",Player1,1,1,1)
    CreateVisualEffect("spcrtwpn",[401.348])~ EXIT

  IF ~PartyHasItem("amul22") PartyHasItem("amul24") 
    PartyHasItem("amul25")
    NumItemsParty("amul14",1)
    NumItemsParty("c!pp26",1)
    !PartyHasItem("bdamul24")
    !PartyHasItem("c!pp7")
    !PartyHasItem("cdpp7")
    PartyGoldGT(9999)~
  THEN REPLY @567836 
    DO ~TakePartyGold(10000)      DestroyGold(10000)
    TakePartyItemNum("amul22",1)   DestroyItem("amul22")
    TakePartyItemNum("amul24",1)   DestroyItem("amul24")
    TakePartyItemNum("amul25",1)   DestroyItem("amul25")
    TakePartyItemNum("amul14",1) DestroyItem("amul14")
    TakePartyItemNum("c!pp26",1) DestroyItem("c!pp26")
    GiveItemCreate("c2amul01",Player1,1,1,1)
    CreateVisualEffect("spcrtwpn",[401.348])~ EXIT

  IF ~PartyHasItem("amul22") PartyHasItem("amul24") 
    PartyHasItem("amul25")
    NumItemsParty("amul14",1)
    NumItemsParty("cdpp26",1)
    !PartyHasItem("bdamul24")
    !PartyHasItem("c!pp7")
    !PartyHasItem("cdpp7")
    !PartyHasItem("c!pp26")
    PartyGoldGT(9999)~
  THEN REPLY @567836 
    DO ~TakePartyGold(10000)      DestroyGold(10000)
    TakePartyItemNum("amul22",1)   DestroyItem("amul22")
    TakePartyItemNum("amul24",1)   DestroyItem("amul24")
    TakePartyItemNum("amul25",1)   DestroyItem("amul25")
    TakePartyItemNum("amul14",1) DestroyItem("amul14")
    TakePartyItemNum("cdpp26",1) DestroyItem("cdpp26")
    GiveItemCreate("c2amul01",Player1,1,1,1)
    CreateVisualEffect("spcrtwpn",[401.348])~ EXIT

  IF ~PartyHasItem("amul22") PartyHasItem("amul24") 
    PartyHasItem("amul25")
    NumItemsParty("bdamul24",1)
    NumItemsParty("c!pp7",1)
    !PartyHasItem("amul14")
    PartyGoldGT(9999)~
  THEN REPLY @567836 
    DO ~TakePartyGold(10000)      DestroyGold(10000)
    TakePartyItemNum("amul22",1)   DestroyItem("amul22")
    TakePartyItemNum("amul24",1)   DestroyItem("amul24")
    TakePartyItemNum("amul25",1)   DestroyItem("amul25")
    TakePartyItemNum("bdamul24",1) DestroyItem("bdamul24")
    TakePartyItemNum("c!pp7",1)    DestroyItem("c!pp7")
    GiveItemCreate("c2amul01",Player1,1,1,1)
    CreateVisualEffect("spcrtwpn",[401.348])~ EXIT

  IF ~PartyHasItem("amul22") PartyHasItem("amul24") 
    PartyHasItem("amul25")
    NumItemsParty("bdamul24",1)
    NumItemsParty("cdpp7",1)
    !PartyHasItem("amul14")
    !PartyHasItem("c!pp7")
    PartyGoldGT(9999)~
  THEN REPLY @567836 
    DO ~TakePartyGold(10000)      DestroyGold(10000)
    TakePartyItemNum("amul22",1)   DestroyItem("amul22")
    TakePartyItemNum("amul24",1)   DestroyItem("amul24")
    TakePartyItemNum("amul25",1)   DestroyItem("amul25")
    TakePartyItemNum("bdamul24",1) DestroyItem("bdamul24")
    TakePartyItemNum("cdpp7",1)    DestroyItem("cdpp7")
    GiveItemCreate("c2amul01",Player1,1,1,1)
    CreateVisualEffect("spcrtwpn",[401.348])~ EXIT

  IF ~PartyHasItem("amul22") PartyHasItem("amul24") 
    PartyHasItem("amul25")
    NumItemsParty("bdamul24",1)
    NumItemsParty("c!pp26",1)
    !PartyHasItem("amul14")
    !PartyHasItem("c!pp7")
    !PartyHasItem("cdpp7")
    PartyGoldGT(9999)~
  THEN REPLY @567836 
    DO ~TakePartyGold(10000)      DestroyGold(10000)
    TakePartyItemNum("amul22",1)   DestroyItem("amul22")
    TakePartyItemNum("amul24",1)   DestroyItem("amul24")
    TakePartyItemNum("amul25",1)   DestroyItem("amul25")
    TakePartyItemNum("bdamul24",1) DestroyItem("bdamul24")
    TakePartyItemNum("c!pp26",1)   DestroyItem("c!pp26")
    GiveItemCreate("c2amul01",Player1,1,1,1)
    CreateVisualEffect("spcrtwpn",[401.348])~ EXIT

  IF ~PartyHasItem("amul22") PartyHasItem("amul24") 
    PartyHasItem("amul25")
    NumItemsParty("bdamul24",1)
    NumItemsParty("cdpp26",1)
    !PartyHasItem("amul14")
    !PartyHasItem("c!pp7")
    !PartyHasItem("cdpp7")
    !PartyHasItem("c!pp26")
    PartyGoldGT(9999)~
  THEN REPLY @567836 
    DO ~TakePartyGold(10000)      DestroyGold(10000)
    TakePartyItemNum("amul22",1)   DestroyItem("amul22")
    TakePartyItemNum("amul24",1)   DestroyItem("amul24")
    TakePartyItemNum("amul25",1)   DestroyItem("amul25")
    TakePartyItemNum("bdamul24",1) DestroyItem("bdamul24")
    TakePartyItemNum("cdpp26",1)   DestroyItem("cdpp26")
    GiveItemCreate("c2amul01",Player1,1,1,1)
    CreateVisualEffect("spcrtwpn",[401.348])~ EXIT

  IF ~PartyHasItem("amul22") PartyHasItem("amul24") 
    PartyHasItem("amul25")
    NumItemsParty("c!pp7",1)
    NumItemsParty("cdpp7",1)
    !PartyHasItem("amul14")
    !PartyHasItem("bdamul24")
    PartyGoldGT(9999)~
  THEN REPLY @567836 
    DO ~TakePartyGold(10000)      DestroyGold(10000)
    TakePartyItemNum("amul22",1)   DestroyItem("amul22")
    TakePartyItemNum("amul24",1)   DestroyItem("amul24")
    TakePartyItemNum("amul25",1)   DestroyItem("amul25")
    TakePartyItemNum("c!pp7",1) DestroyItem("c!pp7")
    TakePartyItemNum("cdpp7",1) DestroyItem("cdpp7")
    GiveItemCreate("c2amul01",Player1,1,1,1)
    CreateVisualEffect("spcrtwpn",[401.348])~ EXIT

  IF ~PartyHasItem("amul22") PartyHasItem("amul24") 
    PartyHasItem("amul25")
    NumItemsParty("c!pp7",1)
    NumItemsParty("c!pp26",1)
    !PartyHasItem("amul14")
    !PartyHasItem("bdamul24")
    !PartyHasItem("cdpp7")
    PartyGoldGT(9999)~
  THEN REPLY @567836 
    DO ~TakePartyGold(10000)      DestroyGold(10000)
    TakePartyItemNum("amul22",1)   DestroyItem("amul22")
    TakePartyItemNum("amul24",1)   DestroyItem("amul24")
    TakePartyItemNum("amul25",1)   DestroyItem("amul25")
    TakePartyItemNum("c!pp7",1)  DestroyItem("c!pp7")
    TakePartyItemNum("c!pp26",1) DestroyItem("c!pp26")
    GiveItemCreate("c2amul01",Player1,1,1,1)
    CreateVisualEffect("spcrtwpn",[401.348])~ EXIT

  IF ~PartyHasItem("amul22") PartyHasItem("amul24") 
    PartyHasItem("amul25")
    NumItemsParty("c!pp7",1)
    NumItemsParty("cdpp26",1)
    !PartyHasItem("amul14")
    !PartyHasItem("bdamul24")
    !PartyHasItem("cdpp7")
    !PartyHasItem("c!pp26")
    PartyGoldGT(9999)~
  THEN REPLY @567836 
    DO ~TakePartyGold(10000)      DestroyGold(10000)
    TakePartyItemNum("amul22",1)   DestroyItem("amul22")
    TakePartyItemNum("amul24",1)   DestroyItem("amul24")
    TakePartyItemNum("amul25",1)   DestroyItem("amul25")
    TakePartyItemNum("c!pp7",1)  DestroyItem("c!pp7")
    TakePartyItemNum("cdpp26",1) DestroyItem("cdpp26")
    GiveItemCreate("c2amul01",Player1,1,1,1)
    CreateVisualEffect("spcrtwpn",[401.348])~ EXIT

  IF ~PartyHasItem("amul22") PartyHasItem("amul24") 
    PartyHasItem("amul25")
    NumItemsParty("cdpp7",1)
    NumItemsParty("c!pp26",1)
    !PartyHasItem("amul14")
    !PartyHasItem("bdamul24")
    !PartyHasItem("c!pp7")
    PartyGoldGT(9999)~
  THEN REPLY @567836 
    DO ~TakePartyGold(10000)      DestroyGold(10000)
    TakePartyItemNum("amul22",1)   DestroyItem("amul22")
    TakePartyItemNum("amul24",1)   DestroyItem("amul24")
    TakePartyItemNum("amul25",1)   DestroyItem("amul25")
    TakePartyItemNum("cdpp7",1)  DestroyItem("cdpp7")
    TakePartyItemNum("c!pp26",1) DestroyItem("c!pp26")
    GiveItemCreate("c2amul01",Player1,1,1,1)
    CreateVisualEffect("spcrtwpn",[401.348])~ EXIT

  IF ~PartyHasItem("amul22") PartyHasItem("amul24") 
    PartyHasItem("amul25")
    NumItemsParty("cdpp7",1)
    NumItemsParty("cdpp26",1)
    !PartyHasItem("amul14")
    !PartyHasItem("bdamul24")
    !PartyHasItem("c!pp7")
    !PartyHasItem("c!pp26")
    PartyGoldGT(9999)~
  THEN REPLY @567836 
    DO ~TakePartyGold(10000)      DestroyGold(10000)
    TakePartyItemNum("amul22",1)   DestroyItem("amul22")
    TakePartyItemNum("amul24",1)   DestroyItem("amul24")
    TakePartyItemNum("amul25",1)   DestroyItem("amul25")
    TakePartyItemNum("cdpp7",1)  DestroyItem("cdpp7")
    TakePartyItemNum("cdpp26",1) DestroyItem("cdpp26")
    GiveItemCreate("c2amul01",Player1,1,1,1)
    CreateVisualEffect("spcrtwpn",[401.348])~ EXIT

  IF ~PartyHasItem("amul22") PartyHasItem("amul24") 
    PartyHasItem("amul25")
    NumItemsParty("c!pp26",1)
    NumItemsParty("cdpp26",1)
    !PartyHasItem("amul14")
    !PartyHasItem("bdamul24")
    !PartyHasItem("c!pp7")
    !PartyHasItem("cdpp7")
    PartyGoldGT(9999)~
  THEN REPLY @567836 
    DO ~TakePartyGold(10000)      DestroyGold(10000)
    TakePartyItemNum("amul22",1)   DestroyItem("amul22")
    TakePartyItemNum("amul24",1)   DestroyItem("amul24")
    TakePartyItemNum("amul25",1)   DestroyItem("amul25")
    TakePartyItemNum("c!pp26",1) DestroyItem("c!pp26")
    TakePartyItemNum("cdpp26",1) DestroyItem("cdpp26")
    GiveItemCreate("c2amul01",Player1,1,1,1)
    CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN water SAY @567888 = @5678988 
    IF ~~ THEN REPLY @567835 GOTO c2itemupgrade
    IF ~PartyHasItem("sw1h52") 
        PartyHasItem("sw1h23") 
        !PartyHasItem("bdsw1h23") 
        PartyHasItem("sw1h35")
        PartyGoldGT(14999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(15000)      DestroyGold(15000)
          TakePartyItemNum("sw1h52",1)   DestroyItem("sw1h52")
          TakePartyItemNum("sw1h23",1)   DestroyItem("sw1h23")
          TakePartyItemNum("sw1h35",1)   DestroyItem("sw1h35")
          GiveItemCreate("c2sw1h03",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("sw1h52") 
        PartyHasItem("bdsw1h23") 
        PartyHasItem("sw1h35")
        PartyGoldGT(14999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(15000)      DestroyGold(15000)
          TakePartyItemNum("sw1h52",1)   DestroyItem("sw1h52")
          TakePartyItemNum("bdsw1h23",1) DestroyItem("bdsw1h23")
          TakePartyItemNum("sw1h35",1)   DestroyItem("sw1h35")
          GiveItemCreate("c2sw1h03",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN azur
    SAY @567889 = @5678989 IF ~~ THEN REPLY @567835 GOTO c2itemupgrade
    IF ~PartyHasItem("ax1h10") PartyHasItem("misc5k") 
        PartyGoldGT(19999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(20000)      DestroyGold(20000)
          TakePartyItemNum("ax1h10",1)   DestroyItem("ax1h10")
          TakePartyItemNum("misc5k",1)   DestroyItem("misc5k")
          GiveItemCreate("c2ax1h01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN sorcerian SAY @567890 = @5678990  
    IF ~~ THEN REPLY @567835 GOTO c2itemupgrade
    IF ~PartyHasItem("ring08") !PartyHasItem("ring08a") !PartyHasItem("ohringwi")
        PartyHasItem("ring40")
        PartyHasItem("ring06") !PartyHasItem("cdpp11") !PartyHasItem("c!pp11")
        PartyHasItem("amul16")
        PartyGoldGT(19999)~ THEN REPLY @567836
      DO ~TakePartyGold(20000)           DestroyGold(20000)
          TakePartyItemNum("ring08",1)   DestroyItem("ring08")
          TakePartyItemNum("ring06",1)   DestroyItem("ring06")
          TakePartyItemNum("ring40",1)   DestroyItem("ring40")
          TakePartyItemNum("amul16",1)   DestroyItem("amul16")
          GiveItemCreate("c2ring04",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("ring08a") !PartyHasItem("ohringwi")
        PartyHasItem("ring40")
        PartyHasItem("ring06") !PartyHasItem("cdpp11") !PartyHasItem("c!pp11")
        PartyHasItem("amul16")
        PartyGoldGT(19999)~ THEN REPLY @567836
      DO ~TakePartyGold(20000)           DestroyGold(20000)
          TakePartyItemNum("ring08a",1)  DestroyItem("ring08a")
          TakePartyItemNum("ring06",1)   DestroyItem("ring06")
          TakePartyItemNum("ring40",1)   DestroyItem("ring40")
          TakePartyItemNum("amul16",1)   DestroyItem("amul16")
          GiveItemCreate("c2ring04",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("ohringwi")
        PartyHasItem("ring40")
        PartyHasItem("ring06") !PartyHasItem("cdpp11") !PartyHasItem("c!pp11")
        PartyHasItem("amul16")
        PartyGoldGT(19999)~ THEN REPLY @567836
      DO ~TakePartyGold(20000)           DestroyGold(20000)
          TakePartyItemNum("ohringwi",1) DestroyItem("ohringwi")
          TakePartyItemNum("ring06",1)   DestroyItem("ring06")
          TakePartyItemNum("ring40",1)   DestroyItem("ring40")
          TakePartyItemNum("amul16",1)   DestroyItem("amul16")
          GiveItemCreate("c2ring04",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("ring08") !PartyHasItem("ring08a") !PartyHasItem("ohringwi") 
        PartyHasItem("ring40")
        PartyHasItem("cdpp11") !PartyHasItem("c!pp11")
        PartyHasItem("amul16")
        PartyGoldGT(19999)~ THEN REPLY @567836
      DO ~TakePartyGold(20000)           DestroyGold(20000)
          TakePartyItemNum("ring08",1)   DestroyItem("ring08")
          TakePartyItemNum("cdpp11",1)   DestroyItem("cdpp11")
          TakePartyItemNum("ring40",1)   DestroyItem("ring40")
          TakePartyItemNum("amul16",1)   DestroyItem("amul16")
          GiveItemCreate("c2ring04",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("ring08a") !PartyHasItem("ohringwi")
        PartyHasItem("ring40")
        PartyHasItem("cdpp11") !PartyHasItem("c!pp11")
        PartyHasItem("amul16")
        PartyGoldGT(19999)~ THEN REPLY @567836
      DO ~TakePartyGold(20000)           DestroyGold(20000)
          TakePartyItemNum("ring08a",1)  DestroyItem("ring08a")
          TakePartyItemNum("cdpp11",1)   DestroyItem("cdpp11")
          TakePartyItemNum("ring40",1)   DestroyItem("ring40")
          TakePartyItemNum("amul16",1)   DestroyItem("amul16")
          GiveItemCreate("c2ring04",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("ohringwi")
        PartyHasItem("ring40")
        PartyHasItem("cdpp11") !PartyHasItem("c!pp11")
        PartyHasItem("amul16")
        PartyGoldGT(19999)~ THEN REPLY @567836
      DO ~TakePartyGold(20000)           DestroyGold(20000)
          TakePartyItemNum("ohringwi",1) DestroyItem("ohringwi")
          TakePartyItemNum("cdpp11",1)   DestroyItem("cdpp11")
          TakePartyItemNum("ring40",1)   DestroyItem("ring40")
          TakePartyItemNum("amul16",1)   DestroyItem("amul16")
          GiveItemCreate("c2ring04",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("ring08") !PartyHasItem("ring08a") !PartyHasItem("ohringwi")  
        PartyHasItem("ring40")
        PartyHasItem("c!pp11")
        PartyHasItem("amul16")
        PartyGoldGT(19999)~ THEN REPLY @567836
      DO ~TakePartyGold(20000)           DestroyGold(20000)
          TakePartyItemNum("ring08",1)   DestroyItem("ring08")
          TakePartyItemNum("c!pp11",1)   DestroyItem("c!pp11")
          TakePartyItemNum("ring40",1)   DestroyItem("ring40")
          TakePartyItemNum("amul16",1)   DestroyItem("amul16")
          GiveItemCreate("c2ring04",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("ring08a") !PartyHasItem("ohringwi") 
        PartyHasItem("ring40")
        PartyHasItem("c!pp11")
        PartyHasItem("amul16")
        PartyGoldGT(19999)~ THEN REPLY @567836
      DO ~TakePartyGold(20000)           DestroyGold(20000)
          TakePartyItemNum("ring08a",1)  DestroyItem("ring08a")
          TakePartyItemNum("c!pp11",1)   DestroyItem("c!pp11")
          TakePartyItemNum("ring40",1)   DestroyItem("ring40")
          TakePartyItemNum("amul16",1)   DestroyItem("amul16")
          GiveItemCreate("c2ring04",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("ohringwi") 
        PartyHasItem("ring40")
        PartyHasItem("c!pp11")
        PartyHasItem("amul16")
        PartyGoldGT(19999)~ THEN REPLY @567836
      DO ~TakePartyGold(20000)           DestroyGold(20000)
          TakePartyItemNum("ohringwi",1) DestroyItem("ohringwi")
          TakePartyItemNum("c!pp11",1)   DestroyItem("c!pp11")
          TakePartyItemNum("ring40",1)   DestroyItem("ring40")
          TakePartyItemNum("amul16",1)   DestroyItem("amul16")
          GiveItemCreate("c2ring04",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN girdle SAY @567893 = @56789993 
    IF ~~ THEN REPLY @567835 GOTO c2itemupgrade
    IF ~PartyHasItem("belt02") 
      PartyHasItem("bdbelt13")
      PartyHasItem("bdbelt14")
      NumItemsPartyGT("misc20",2)
      PartyGoldGT(9999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(10000)      DestroyGold(10000)
      TakePartyItemNum("belt02",1)   DestroyItem("belt02")
      TakePartyItemNum("bdbelt13",1) DestroyItem("bdbelt13")
      TakePartyItemNum("bdbelt14",1) DestroyItem("bdbelt14")
      TakePartyItemNum("misc20",1)   DestroyItem("misc20")
      TakePartyItemNum("misc20",1)   DestroyItem("misc20")
      TakePartyItemNum("misc20",1)   DestroyItem("misc20")
      GiveItemCreate("c2belt01",Player1,1,1,1)
      CreateVisualEffect("spcrtwpn",[401.348])~ EXIT

    IF ~PartyHasItem("belt02") 
      PartyHasItem("belt03")
      PartyHasItem("bdbelt14")
      !PartyHasItem("bdbelt13")
      NumItemsPartyGT("misc20",2)
      PartyGoldGT(9999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(10000)      DestroyGold(10000)
      TakePartyItemNum("belt02",1)   DestroyItem("belt02")
      TakePartyItemNum("belt03",1)   DestroyItem("belt03")
      TakePartyItemNum("bdbelt14",1) DestroyItem("bdbelt14")
      TakePartyItemNum("misc20",1)   DestroyItem("misc20")
      TakePartyItemNum("misc20",1)   DestroyItem("misc20")
      TakePartyItemNum("misc20",1)   DestroyItem("misc20")
      GiveItemCreate("c2belt01",Player1,1,1,1)
      CreateVisualEffect("spcrtwpn",[401.348])~ EXIT

    IF ~PartyHasItem("belt02") 
      PartyHasItem("bdbelt13")
      PartyHasItem("belt04")
      !PartyHasItem("bdbelt14")
      NumItemsPartyGT("misc20",2)
      PartyGoldGT(9999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(10000)      DestroyGold(10000)
      TakePartyItemNum("belt02",1)   DestroyItem("belt02")
      TakePartyItemNum("bdbelt13",1) DestroyItem("bdbelt13")
      TakePartyItemNum("belt04",1)   DestroyItem("belt04")
      TakePartyItemNum("misc20",1)   DestroyItem("misc20")
      TakePartyItemNum("misc20",1)   DestroyItem("misc20")
      TakePartyItemNum("misc20",1)   DestroyItem("misc20")
      GiveItemCreate("c2belt01",Player1,1,1,1)
      CreateVisualEffect("spcrtwpn",[401.348])~ EXIT

    IF ~PartyHasItem("belt02") 
      PartyHasItem("belt03")
      PartyHasItem("belt04")
      !PartyHasItem("bdbelt13")
      !PartyHasItem("bdbelt14")
      NumItemsPartyGT("misc20",2)
      PartyGoldGT(9999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(10000)      DestroyGold(10000)
      TakePartyItemNum("belt02",1)   DestroyItem("belt02")
      TakePartyItemNum("belt03",1) DestroyItem("belt03")
      TakePartyItemNum("belt04",1) DestroyItem("belt04")
      TakePartyItemNum("misc20",1) DestroyItem("misc20")
      TakePartyItemNum("misc20",1) DestroyItem("misc20")
      TakePartyItemNum("misc20",1) DestroyItem("misc20")
      GiveItemCreate("c2belt01",Player1,1,1,1)
      CreateVisualEffect("spcrtwpn",[401.348])~ EXIT




    IF ~PartyHasItem("belt02") 
      PartyHasItem("bdbelt13")
      PartyHasItem("bdbelt14")
      NumItemsPartyGT("amul13",2)
      !NumItemsPartyGT("misc20",2)
      PartyGoldGT(9999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(10000)      DestroyGold(10000)
      TakePartyItemNum("belt02",1)   DestroyItem("belt02")
      TakePartyItemNum("bdbelt13",1) DestroyItem("bdbelt13")
      TakePartyItemNum("bdbelt14",1) DestroyItem("bdbelt14")
      TakePartyItemNum("amul13",1)   DestroyItem("amul13")
      TakePartyItemNum("amul13",1)   DestroyItem("amul13")
      TakePartyItemNum("amul13",1)   DestroyItem("amul13")
      GiveItemCreate("c2belt01",Player1,1,1,1)
      CreateVisualEffect("spcrtwpn",[401.348])~ EXIT

    IF ~PartyHasItem("belt02") 
      PartyHasItem("belt03")
      PartyHasItem("bdbelt14")
      !PartyHasItem("bdbelt13")
      NumItemsPartyGT("amul13",2)
      !NumItemsPartyGT("misc20",2)
      PartyGoldGT(9999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(10000)      DestroyGold(10000)
      TakePartyItemNum("belt02",1)   DestroyItem("belt02")
      TakePartyItemNum("belt03",1)   DestroyItem("belt03")
      TakePartyItemNum("bdbelt14",1) DestroyItem("bdbelt14")
      TakePartyItemNum("amul13",1)   DestroyItem("amul13")
      TakePartyItemNum("amul13",1)   DestroyItem("amul13")
      TakePartyItemNum("amul13",1)   DestroyItem("amul13")
      GiveItemCreate("c2belt01",Player1,1,1,1)
      CreateVisualEffect("spcrtwpn",[401.348])~ EXIT

    IF ~PartyHasItem("belt02") 
      PartyHasItem("bdbelt13")
      PartyHasItem("belt04")
      !PartyHasItem("bdbelt14")
      NumItemsPartyGT("amul13",2)
      !NumItemsPartyGT("misc20",2)
      PartyGoldGT(9999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(10000)      DestroyGold(10000)
      TakePartyItemNum("belt02",1)   DestroyItem("belt02")
      TakePartyItemNum("bdbelt13",1) DestroyItem("bdbelt13")
      TakePartyItemNum("belt04",1)   DestroyItem("belt04")
      TakePartyItemNum("amul13",1)   DestroyItem("amul13")
      TakePartyItemNum("amul13",1)   DestroyItem("amul13")
      TakePartyItemNum("amul13",1)   DestroyItem("amul13")
      GiveItemCreate("c2belt01",Player1,1,1,1)
      CreateVisualEffect("spcrtwpn",[401.348])~ EXIT

    IF ~PartyHasItem("belt02") 
      PartyHasItem("belt03")
      PartyHasItem("belt04")
      !PartyHasItem("bdbelt13")
      !PartyHasItem("bdbelt14")
      NumItemsPartyGT("amul13",2)
      !NumItemsPartyGT("misc20",2)
      PartyGoldGT(9999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(10000)      DestroyGold(10000)
      TakePartyItemNum("belt02",1)   DestroyItem("belt02")
      TakePartyItemNum("belt03",1) DestroyItem("belt03")
      TakePartyItemNum("belt04",1) DestroyItem("belt04")
      TakePartyItemNum("amul13",1) DestroyItem("amul13")
      TakePartyItemNum("amul13",1) DestroyItem("amul13")
      TakePartyItemNum("amul13",1) DestroyItem("amul13")
      GiveItemCreate("c2belt01",Player1,1,1,1)
      CreateVisualEffect("spcrtwpn",[401.348])~ EXIT




    IF ~PartyHasItem("belt02") 
      PartyHasItem("bdbelt13")
      PartyHasItem("bdbelt14")
      NumItemsPartyGT("ring15",2)
      !NumItemsPartyGT("amul13",2)
      !NumItemsPartyGT("misc20",2)
      PartyGoldGT(9999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(10000)      DestroyGold(10000)
      TakePartyItemNum("belt02",1)   DestroyItem("belt02")
      TakePartyItemNum("bdbelt13",1) DestroyItem("bdbelt13")
      TakePartyItemNum("bdbelt14",1) DestroyItem("bdbelt14")
      TakePartyItemNum("ring15",1)   DestroyItem("ring15")
      TakePartyItemNum("ring15",1)   DestroyItem("ring15")
      TakePartyItemNum("ring15",1)   DestroyItem("ring15")
      GiveItemCreate("c2belt01",Player1,1,1,1)
      CreateVisualEffect("spcrtwpn",[401.348])~ EXIT

    IF ~PartyHasItem("belt02") 
      PartyHasItem("belt03")
      PartyHasItem("bdbelt14")
      !PartyHasItem("bdbelt13")
      NumItemsPartyGT("ring15",2)
      !NumItemsPartyGT("amul13",2)
      !NumItemsPartyGT("misc20",2)
      PartyGoldGT(9999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(10000)      DestroyGold(10000)
      TakePartyItemNum("belt02",1)   DestroyItem("belt02")
      TakePartyItemNum("belt03",1)   DestroyItem("belt03")
      TakePartyItemNum("bdbelt14",1) DestroyItem("bdbelt14")
      TakePartyItemNum("ring15",1)   DestroyItem("ring15")
      TakePartyItemNum("ring15",1)   DestroyItem("ring15")
      TakePartyItemNum("ring15",1)   DestroyItem("ring15")
      GiveItemCreate("c2belt01",Player1,1,1,1)
      CreateVisualEffect("spcrtwpn",[401.348])~ EXIT

    IF ~PartyHasItem("belt02") 
      PartyHasItem("bdbelt13")
      PartyHasItem("belt04")
      !PartyHasItem("bdbelt14")
      NumItemsPartyGT("ring15",2)
      !NumItemsPartyGT("amul13",2)
      !NumItemsPartyGT("misc20",2)
      PartyGoldGT(9999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(10000)      DestroyGold(10000)
      TakePartyItemNum("belt02",1)   DestroyItem("belt02")
      TakePartyItemNum("bdbelt13",1) DestroyItem("bdbelt13")
      TakePartyItemNum("belt04",1)   DestroyItem("belt04")
      TakePartyItemNum("ring15",1)   DestroyItem("ring15")
      TakePartyItemNum("ring15",1)   DestroyItem("ring15")
      TakePartyItemNum("ring15",1)   DestroyItem("ring15")
      GiveItemCreate("c2belt01",Player1,1,1,1)
      CreateVisualEffect("spcrtwpn",[401.348])~ EXIT

    IF ~PartyHasItem("belt02") 
      PartyHasItem("belt03")
      PartyHasItem("belt04")
      !PartyHasItem("bdbelt13")
      !PartyHasItem("bdbelt14")
      NumItemsPartyGT("ring15",2)
      !NumItemsPartyGT("amul13",2)
      !NumItemsPartyGT("misc20",2)
      PartyGoldGT(9999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(10000)      DestroyGold(10000)
      TakePartyItemNum("belt02",1)   DestroyItem("belt02")
      TakePartyItemNum("belt03",1) DestroyItem("belt03")
      TakePartyItemNum("belt04",1) DestroyItem("belt04")
      TakePartyItemNum("ring15",1) DestroyItem("ring15")
      TakePartyItemNum("ring15",1) DestroyItem("ring15")
      TakePartyItemNum("ring15",1) DestroyItem("ring15")
      GiveItemCreate("c2belt01",Player1,1,1,1)
      CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN kitthix
    SAY @567896 = @5678996 IF ~~ THEN REPLY @567835 GOTO c2itemupgrade
    IF ~PartyHasItem("misc3e") PartyHasItem("scrl6r") 
        PartyHasItem("scrl99") 
        NumItemsPartyGT("dagg16",4)
        PartyGoldGT(4999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(5000)      DestroyGold(5000)
          TakePartyItemNum("misc3e",1)   DestroyItem("misc3e")
          TakePartyItemNum("scrl6r",1)   DestroyItem("scrl6r")
          TakePartyItemNum("scrl99",1)   DestroyItem("scrl99")
          TakePartyItemNum("dagg16",5)   DestroyItem("dagg16")
          GiveItemCreate("c2kit",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN hd
    SAY @567898 IF ~~ THEN REPLY @567835 GOTO c2itemupgrade
    IF ~PartyHasItem("npsw05") PartyHasItem("npsw06") 
        PartyHasItem("SW1H26") PartyHasItem("SW1H27") 
        PartyHasItem("misc45") PartyHasItem("scrl5p") 
        PartyHasItem("scrl5i") 
        PartyGoldGT(24999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(25000)      DestroyGold(25000)
          TakePartyItemNum("npsw05",1)   DestroyItem("npsw05")
          TakePartyItemNum("npsw06",1)   DestroyItem("npsw06")
          TakePartyItemNum("sw1h26",1)   DestroyItem("sw1h26")
          TakePartyItemNum("sw1h27",1)   DestroyItem("sw1h27")
          TakePartyItemNum("misc45",1)   DestroyItem("misc45")
          TakePartyItemNum("scrl5p",1)   DestroyItem("scrl5p")
          TakePartyItemNum("scrl5i",1)   DestroyItem("scrl5i")
          GiveItemCreate("c2hd1",Player1,1,1,1)
          GiveItemCreate("c2hd2",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("npsw05") PartyHasItem("npsw06") 
        PartyHasItem("SW1H26") PartyHasItem("SW1H27") 
        PartyHasItem("misc45") PartyHasItem("scrl5p") 
        PartyHasItem("scrl5w") 
        PartyGoldGT(24999)~
      THEN REPLY @567836 
      DO ~TakePartyGold(25000)      DestroyGold(25000)
          TakePartyItemNum("npsw05",1)   DestroyItem("npsw05")
          TakePartyItemNum("npsw06",1)   DestroyItem("npsw06")
          TakePartyItemNum("sw1h26",1)   DestroyItem("sw1h26")
          TakePartyItemNum("sw1h27",1)   DestroyItem("sw1h27")
          TakePartyItemNum("misc45",1)   DestroyItem("misc45")
          TakePartyItemNum("scrl5p",1)   DestroyItem("scrl5p")
          TakePartyItemNum("scrl5w",1)   DestroyItem("scrl5w")
          GiveItemCreate("c2hd1",Player1,1,1,1)
          GiveItemCreate("c2hd2",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN chan01
    SAY @5678100 IF ~~ THEN REPLY @567835 GOTO c2itemupgrade
    IF ~PartyHasItem("chan14") PartyHasItem("scaler") 
        NumItemsPartyGT("misc22",2)
        NumItemsPartyGT("misc16",2)
        PartyGoldGT(24999)~
      THEN REPLY @567836
      DO ~TakePartyGold(25000)      DestroyGold(25000)
          TakePartyItemNum("chan14",1)   DestroyItem("chan14")
          TakePartyItemNum("scaler",1)   DestroyItem("scaler")
          TakePartyItemNum("misc22",3)   DestroyItem("misc22")
          TakePartyItemNum("misc16",3)   DestroyItem("misc16")
          GiveItemCreate("c2chan01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END
