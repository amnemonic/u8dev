;;*********************************************************
;;   DCL FILE for ML620418, Ver.4.03
;;   Copyright (C) 2018 LAPIS Semiconductor Co., Ltd.
;;
;;   Last Edition  Oct 04, 2018
;;   U8/U16 Device Information Files V2.00
;;*********************************************************

#CORE           "nX-U8/100"
#REVISION       "A3"
#TARGET         "ML620909"
#VERSION        "4.03"

;+++++++++++++++++++++++++++++++++++++++++++++++++++++
;       MEMORY RANGE
;+++++++++++++++++++++++++++++++++++++++++++++++++++++
;Program memory space (physical segment #0)
#ROM    0H , 0FFFFH
        SWI_VECTOR  00080H  , 000FFH
        CODE        00000H  , 0FBFFH
        CODE        0FC00H  , 0FDFFH

;Data memory space (physical segment #0)
#RAM    0H , 0FFFFH
        DATA        0B000H  , 0EFFFH
        DATA        0F000H  , 0FFFFH
        INTERNALRAM 0B000H  , 0EFFFH
        SFR         0F000H  , 0FFFFH

;;                  start_adr end_adr   WINVAL
        ROMWINDOW   00000H  , 0AFFFH    , 0FFH ; WINVAL is dummy

;;definition of physical segment #1 and over memory space

;; #EXTEND  cs_max, ds_max
;;      cs_max : number of physical segment for Program memory
;;      ds_max : number of physical segment for Data memory

#EXTEND 16, 16
        ROM     01H:00000H  ,  03H:0FFFFH   ; CODE and TABLE type segments can be allocated
        ROM     07H:00000H  ,  07H:00FFFH
        ROM     08H:00000H  ,  08H:0FDFFH
        ROM     09H:00000H  ,  0BH:0FFFFH
        ROM     0FH:00000H  ,  0FH:00FFFH


;+++++++++++++++++++++++++++++++++++++++++++++++++++++
;       CODE ADDRESS SYMBOLS
;
;       definition of CODE type symbols
;       - SYNTAX -
;       #DEFCODE
;               Symbol  Code_Address
;               ....................
;+++++++++++++++++++++++++++++++++++++++++++++++++++++

#DEFCODE
;+++++++++++++++++++++++++++++++++++++++++++++++++++++
;       VECTOR AREA
;+++++++++++++++++++++++++++++++++++++++++++++++++++++
        WDTINT          0008H
        EXI0INT         0010H
        EXI1INT         0012H
        EXI2INT         0014H
        EXI3INT         0016H
        EXI4INT         0018H
        EXI5INT         001AH
        EXI6INT         001CH
        EXI7INT         001EH
        SIO0INT         0020H
        SIOF0INT        0022H
        I2C1INT         0026H
        UA0INT          0028H
        UA1INT          002AH
        UAF0INT         002CH
        UAF1INT         002EH
        I2CF0INT        0030H
        I2CF1INT        0032H
        LOSCINT         003AH
        VLSINT          003CH
        MD0INT          003EH
        SADINT          0040H
        RADINT          0042H
        CMP0INT         0048H
        CMP1INT         004AH
        TM0INT          0050H
        TM1INT          0052H
        TM2INT          0054H
        TM3INT          0056H
        TM4INT          0058H
        TM5INT          005AH
        TM6INT          005CH
        TM7INT          005EH
        FTM0INT         0060H
        FTM1INT         0062H
        FTM2INT         0064H
        FTM3INT         0066H
        RTC1INT         0068H
        AL11INT         006AH
        TM1KINT         006EH
        LTB0INT         0070H
        LTB1INT         0072H
        LTB2INT         0074H
        LCDFRINT        0076H
        RTC2INT         0078H
        AL12INT         007AH
        RTC0INT         007CH
        AL10INT         007EH

;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;       DATA ADDRESS SYMBOLS
;
;       definition of DATA type symbols
;
;       - SYNTAX -
;       #DEFDATA
;               Symbol  Data_Address
;               ....................
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#DEFDATA
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;       SFR AREA
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
          DSR             0F000H
        FCON01          0F002H
          FCON0           0F002H
          FCON1           0F003H
        FCON23          0F004H
          FCON2           0F004H
          FCON3           0F005H
        FCON45          0F006H
          FCON4           0F006H
          FCON5           0F007H
          STPACP          0F008H
          SBYCON          0F009H
          FSTAT           0F00AH
          RSTAT           0F00CH
          WDTCON          0F00EH
          WDTMOD          0F00FH
        IE01            0F010H
          IE0             0F010H
          IE1             0F011H
        IE23            0F012H
          IE2             0F012H
          IE3             0F013H
        IE45            0F014H
          IE4             0F014H
          IE5             0F015H
        IE67            0F016H
          IE6             0F016H
          IE7             0F017H
        IRQ01           0F018H
          IRQ0            0F018H
          IRQ1            0F019H
        IRQ23           0F01AH
          IRQ2            0F01AH
          IRQ3            0F01BH
        IRQ45           0F01CH
          IRQ4            0F01CH
          IRQ5            0F01DH
        IRQ67           0F01EH
          IRQ6            0F01EH
          IRQ7            0F01FH
        ILEN            0F020H
          ILENL           0F020H
          ILENH           0F021H
        CIL             0F022H
          CILL            0F022H
          CILH            0F023H
        ILC1            0F024H
          ILC1L           0F024H
          ILC1H           0F025H
        ILC2            0F026H
          ILC2L           0F026H
          ILC2H           0F027H
        ILC3            0F028H
          ILC3L           0F028H
          ILC3H           0F029H
        ILC4            0F02AH
          ILC4L           0F02AH
          ILC4H           0F02BH
        ILC5            0F02CH
          ILC5L           0F02CH
          ILC5H           0F02DH
        ILC6            0F02EH
          ILC6L           0F02EH
          ILC6H           0F02FH
        ILC7            0F030H
          ILC7L           0F030H
          ILC7H           0F031H
        EXICON01        0F040H
          EXICON0         0F040H
          EXICON1         0F041H
        EXICON23        0F042H
          EXICON2         0F042H
          EXICON3         0F043H
        EXI01SEL        0F048H
          EXI0SEL         0F048H
          EXI1SEL         0F049H
        EXI23SEL        0F04AH
          EXI2SEL         0F04AH
          EXI3SEL         0F04BH
        EXI45SEL        0F04CH
          EXI4SEL         0F04CH
          EXI5SEL         0F04DH
        EXI67SEL        0F04EH
          EXI6SEL         0F04EH
          EXI7SEL         0F04FH
          LTBR            0F060H
        LTBADJ          0F062H
          LTBADJL         0F062H
          LTBADJH         0F063H
        LTBINT          0F064H
          LTBINTL         0F064H
          LTBINTH         0F065H
          PMCON           0F066H
        BLKCON01        0F068H
          BLKCON0         0F068H
          BLKCON1         0F069H
        BLKCON23        0F06AH
          BLKCON2         0F06AH
          BLKCON3         0F06BH
        BLKCON45        0F06CH
          BLKCON4         0F06CH
          BLKCON5         0F06DH
        T1KCR           0F080H
          T1KCRL          0F080H
          T1KCRH          0F081H
          T1KCON          0F082H
        FLASHA          0F0E0H
          FLASHAL         0F0E0H
          FLASHAH         0F0E1H
        FLASHD          0F0E2H
          FLASHDL         0F0E2H
          FLASHDH         0F0E3H
          FLASHCON        0F0E4H
          FLASHACP        0F0E6H
          FLASHSEG        0F0E8H
          FLASHSLF        0F0EAH
          REMAPADD        0F0ECH
          TST0PDCT        0F0EEH
        BIASCNT         0F0F0H
          BIASCON         0F0F0H
          DSPCNT          0F0F1H
          DSPMOD0         0F0F2H
        DSPCON01        0F0F4H
          DSPCON0         0F0F4H
          DSPCON1         0F0F5H
        DSPCON23        0F0F6H
          DSPCON2         0F0F6H
          DSPCON3         0F0F7H
        DSPAREA         0F0F8H
          DSPOFST         0F0F8H
          DSPBUF          0F0F9H
          DSPCLK          0F0FAH
        LCDINT          0F0FCH
          LCDISET         0F0FCH
          LCDISTAT        0F0FEH
        DSPR000W        0F100H
          DSPR000         0F100H
          DSPR001         0F101H
        DSPR002W        0F102H
          DSPR002         0F102H
          DSPR003         0F103H
        DSPR004W        0F104H
          DSPR004         0F104H
          DSPR005         0F105H
        DSPR006W        0F106H
          DSPR006         0F106H
          DSPR007         0F107H
        DSPR008W        0F108H
          DSPR008         0F108H
          DSPR009         0F109H
        DSPR00AW        0F10AH
          DSPR00A         0F10AH
          DSPR00B         0F10BH
        DSPR00CW        0F10CH
          DSPR00C         0F10CH
          DSPR00D         0F10DH
        DSPR00EW        0F10EH
          DSPR00E         0F10EH
          DSPR00F         0F10FH
        DSPR010W        0F110H
          DSPR010         0F110H
          DSPR011         0F111H
        DSPR012W        0F112H
          DSPR012         0F112H
          DSPR013         0F113H
        DSPR014W        0F114H
          DSPR014         0F114H
          DSPR015         0F115H
        DSPR016W        0F116H
          DSPR016         0F116H
          DSPR017         0F117H
        DSPR018W        0F118H
          DSPR018         0F118H
          DSPR019         0F119H
        DSPR01AW        0F11AH
          DSPR01A         0F11AH
          DSPR01B         0F11BH
        DSPR01CW        0F11CH
          DSPR01C         0F11CH
          DSPR01D         0F11DH
        DSPR01EW        0F11EH
          DSPR01E         0F11EH
          DSPR01F         0F11FH
        DSPR020W        0F120H
          DSPR020         0F120H
          DSPR021         0F121H
        DSPR022W        0F122H
          DSPR022         0F122H
          DSPR023         0F123H
        DSPR024W        0F124H
          DSPR024         0F124H
          DSPR025         0F125H
        DSPR026W        0F126H
          DSPR026         0F126H
          DSPR027         0F127H
        DSPR028W        0F128H
          DSPR028         0F128H
          DSPR029         0F129H
        DSPR02AW        0F12AH
          DSPR02A         0F12AH
          DSPR02B         0F12BH
        DSPR02CW        0F12CH
          DSPR02C         0F12CH
          DSPR02D         0F12DH
        DSPR02EW        0F12EH
          DSPR02E         0F12EH
          DSPR02F         0F12FH
        DSPR030W        0F130H
          DSPR030         0F130H
          DSPR031         0F131H
        DSPR032W        0F132H
          DSPR032         0F132H
          DSPR033         0F133H
        DSPR034W        0F134H
          DSPR034         0F134H
          DSPR035         0F135H
        DSPR036W        0F136H
          DSPR036         0F136H
          DSPR037         0F137H
        DSPR038W        0F138H
          DSPR038         0F138H
          DSPR039         0F139H
        DSPR03AW        0F13AH
          DSPR03A         0F13AH
          DSPR03B         0F13BH
        DSPR03CW        0F13CH
          DSPR03C         0F13CH
          DSPR03D         0F13DH
        DSPR03EW        0F13EH
          DSPR03E         0F13EH
          DSPR03F         0F13FH
        DSPR040W        0F140H
          DSPR040         0F140H
          DSPR041         0F141H
        DSPR042W        0F142H
          DSPR042         0F142H
          DSPR043         0F143H
        DSPR044W        0F144H
          DSPR044         0F144H
          DSPR045         0F145H
        DSPR046W        0F146H
          DSPR046         0F146H
          DSPR047         0F147H
        DSPR048W        0F148H
          DSPR048         0F148H
          DSPR049         0F149H
        DSPR04AW        0F14AH
          DSPR04A         0F14AH
          DSPR04B         0F14BH
        DSPR04CW        0F14CH
          DSPR04C         0F14CH
          DSPR04D         0F14DH
        DSPR04EW        0F14EH
          DSPR04E         0F14EH
          DSPR04F         0F14FH
        DSPR050W        0F150H
          DSPR050         0F150H
          DSPR051         0F151H
        DSPR052W        0F152H
          DSPR052         0F152H
          DSPR053         0F153H
        DSPR054W        0F154H
          DSPR054         0F154H
          DSPR055         0F155H
        DSPR056W        0F156H
          DSPR056         0F156H
          DSPR057         0F157H
        DSPR058W        0F158H
          DSPR058         0F158H
          DSPR059         0F159H
        DSPR05AW        0F15AH
          DSPR05A         0F15AH
          DSPR05B         0F15BH
        DSPR05CW        0F15CH
          DSPR05C         0F15CH
          DSPR05D         0F15DH
        DSPR05EW        0F15EH
          DSPR05E         0F15EH
          DSPR05F         0F15FH
        DSPR060W        0F160H
          DSPR060         0F160H
          DSPR061         0F161H
        DSPR062W        0F162H
          DSPR062         0F162H
          DSPR063         0F163H
        DSPR064W        0F164H
          DSPR064         0F164H
          DSPR065         0F165H
        DSPR066W        0F166H
          DSPR066         0F166H
          DSPR067         0F167H
        DSPR068W        0F168H
          DSPR068         0F168H
          DSPR069         0F169H
        DSPR06AW        0F16AH
          DSPR06A         0F16AH
          DSPR06B         0F16BH
        DSPR06CW        0F16CH
          DSPR06C         0F16CH
          DSPR06D         0F16DH
        DSPR06EW        0F16EH
          DSPR06E         0F16EH
          DSPR06F         0F16FH
        DSPR070W        0F170H
          DSPR070         0F170H
          DSPR071         0F171H
        DSPR072W        0F172H
          DSPR072         0F172H
          DSPR073         0F173H
        DSPR074W        0F174H
          DSPR074         0F174H
          DSPR075         0F175H
        DSPR076W        0F176H
          DSPR076         0F176H
          DSPR077         0F177H
        DSPR078W        0F178H
          DSPR078         0F178H
          DSPR079         0F179H
        DSPR07AW        0F17AH
          DSPR07A         0F17AH
          DSPR07B         0F17BH
        DSPR07CW        0F17CH
          DSPR07C         0F17CH
          DSPR07D         0F17DH
        DSPR07EW        0F17EH
          DSPR07E         0F17EH
          DSPR07F         0F17FH
        DSPR080W        0F180H
          DSPR080         0F180H
          DSPR081         0F181H
        DSPR082W        0F182H
          DSPR082         0F182H
          DSPR083         0F183H
        DSPR084W        0F184H
          DSPR084         0F184H
          DSPR085         0F185H
        DSPR086W        0F186H
          DSPR086         0F186H
          DSPR087         0F187H
        DSPR088W        0F188H
          DSPR088         0F188H
          DSPR089         0F189H
        DSPR08AW        0F18AH
          DSPR08A         0F18AH
          DSPR08B         0F18BH
        DSPR08CW        0F18CH
          DSPR08C         0F18CH
          DSPR08D         0F18DH
        DSPR08EW        0F18EH
          DSPR08E         0F18EH
          DSPR08F         0F18FH
        DSPR090W        0F190H
          DSPR090         0F190H
          DSPR091         0F191H
        DSPR092W        0F192H
          DSPR092         0F192H
          DSPR093         0F193H
        DSPR094W        0F194H
          DSPR094         0F194H
          DSPR095         0F195H
        DSPR096W        0F196H
          DSPR096         0F196H
          DSPR097         0F197H
        DSPR098W        0F198H
          DSPR098         0F198H
          DSPR099         0F199H
        DSPR09AW        0F19AH
          DSPR09A         0F19AH
          DSPR09B         0F19BH
        DSPR09CW        0F19CH
          DSPR09C         0F19CH
          DSPR09D         0F19DH
        DSPR09EW        0F19EH
          DSPR09E         0F19EH
          DSPR09F         0F19FH
        DSPR0A0W        0F1A0H
          DSPR0A0         0F1A0H
          DSPR0A1         0F1A1H
        DSPR0A2W        0F1A2H
          DSPR0A2         0F1A2H
          DSPR0A3         0F1A3H
        DSPR0A4W        0F1A4H
          DSPR0A4         0F1A4H
          DSPR0A5         0F1A5H
        DSPR0A6W        0F1A6H
          DSPR0A6         0F1A6H
          DSPR0A7         0F1A7H
        DSPR0A8W        0F1A8H
          DSPR0A8         0F1A8H
          DSPR0A9         0F1A9H
        DSPR0AAW        0F1AAH
          DSPR0AA         0F1AAH
          DSPR0AB         0F1ABH
        DSPR0ACW        0F1ACH
          DSPR0AC         0F1ACH
          DSPR0AD         0F1ADH
        DSPR0AEW        0F1AEH
          DSPR0AE         0F1AEH
          DSPR0AF         0F1AFH
        DSPR0B0W        0F1B0H
          DSPR0B0         0F1B0H
          DSPR0B1         0F1B1H
        DSPR0B2W        0F1B2H
          DSPR0B2         0F1B2H
          DSPR0B3         0F1B3H
        DSPR0B4W        0F1B4H
          DSPR0B4         0F1B4H
          DSPR0B5         0F1B5H
        DSPR0B6W        0F1B6H
          DSPR0B6         0F1B6H
          DSPR0B7         0F1B7H
        DSPR0B8W        0F1B8H
          DSPR0B8         0F1B8H
          DSPR0B9         0F1B9H
        DSPR0BAW        0F1BAH
          DSPR0BA         0F1BAH
          DSPR0BB         0F1BBH
        DSPR0BCW        0F1BCH
          DSPR0BC         0F1BCH
          DSPR0BD         0F1BDH
        DSPR0BEW        0F1BEH
          DSPR0BE         0F1BEH
          DSPR0BF         0F1BFH
        DSPR0C0W        0F1C0H
          DSPR0C0         0F1C0H
          DSPR0C1         0F1C1H
        DSPR0C2W        0F1C2H
          DSPR0C2         0F1C2H
          DSPR0C3         0F1C3H
        DSPR0C4W        0F1C4H
          DSPR0C4         0F1C4H
          DSPR0C5         0F1C5H
        DSPR0C6W        0F1C6H
          DSPR0C6         0F1C6H
          DSPR0C7         0F1C7H
        DSPR0C8W        0F1C8H
          DSPR0C8         0F1C8H
          DSPR0C9         0F1C9H
        DSPR0CAW        0F1CAH
          DSPR0CA         0F1CAH
          DSPR0CB         0F1CBH
        DSPR0CCW        0F1CCH
          DSPR0CC         0F1CCH
          DSPR0CD         0F1CDH
        DSPR0CEW        0F1CEH
          DSPR0CE         0F1CEH
          DSPR0CF         0F1CFH
        DSPR0D0W        0F1D0H
          DSPR0D0         0F1D0H
          DSPR0D1         0F1D1H
        DSPR0D2W        0F1D2H
          DSPR0D2         0F1D2H
          DSPR0D3         0F1D3H
        DSPR0D4W        0F1D4H
          DSPR0D4         0F1D4H
          DSPR0D5         0F1D5H
        DSPR0D6W        0F1D6H
          DSPR0D6         0F1D6H
          DSPR0D7         0F1D7H
        DSPR0D8W        0F1D8H
          DSPR0D8         0F1D8H
          DSPR0D9         0F1D9H
        DSPR0DAW        0F1DAH
          DSPR0DA         0F1DAH
          DSPR0DB         0F1DBH
        DSPR0DCW        0F1DCH
          DSPR0DC         0F1DCH
          DSPR0DD         0F1DDH
        DSPR0DEW        0F1DEH
          DSPR0DE         0F1DEH
          DSPR0DF         0F1DFH
        DSPR0E0W        0F1E0H
          DSPR0E0         0F1E0H
          DSPR0E1         0F1E1H
        DSPR0E2W        0F1E2H
          DSPR0E2         0F1E2H
          DSPR0E3         0F1E3H
        DSPR0E4W        0F1E4H
          DSPR0E4         0F1E4H
          DSPR0E5         0F1E5H
        DSPR0E6W        0F1E6H
          DSPR0E6         0F1E6H
          DSPR0E7         0F1E7H
        DSPR0E8W        0F1E8H
          DSPR0E8         0F1E8H
          DSPR0E9         0F1E9H
        DSPR0EAW        0F1EAH
          DSPR0EA         0F1EAH
          DSPR0EB         0F1EBH
        DSPR0ECW        0F1ECH
          DSPR0EC         0F1ECH
          DSPR0ED         0F1EDH
        DSPR0EEW        0F1EEH
          DSPR0EE         0F1EEH
          DSPR0EF         0F1EFH
        DSPR0F0W        0F1F0H
          DSPR0F0         0F1F0H
          DSPR0F1         0F1F1H
        DSPR0F2W        0F1F2H
          DSPR0F2         0F1F2H
          DSPR0F3         0F1F3H
        DSPR0F4W        0F1F4H
          DSPR0F4         0F1F4H
          DSPR0F5         0F1F5H
        DSPR0F6W        0F1F6H
          DSPR0F6         0F1F6H
          DSPR0F7         0F1F7H
        DSPR0F8W        0F1F8H
          DSPR0F8         0F1F8H
          DSPR0F9         0F1F9H
        DSPR0FAW        0F1FAH
          DSPR0FA         0F1FAH
          DSPR0FB         0F1FBH
        DSPR0FCW        0F1FCH
          DSPR0FC         0F1FCH
          DSPR0FD         0F1FDH
        DSPR0FEW        0F1FEH
          DSPR0FE         0F1FEH
          DSPR0FF         0F1FFH
          P0D             0F210H
          P0DIR           0F211H
        P0CON           0F212H
          P0CON0          0F212H
          P0CON1          0F213H
        P0MOD           0F214H
          P0MOD0          0F214H
          P0MOD1          0F215H
          P2D             0F220H
          P2DIR           0F221H
        P2CON           0F222H
          P2CON0          0F222H
          P2CON1          0F223H
        P2MOD           0F224H
          P2MOD0          0F224H
          P2MOD1          0F225H
          P3D             0F228H
          P3DIR           0F229H
        P3CON           0F22AH
          P3CON0          0F22AH
          P3CON1          0F22BH
        P3MOD01         0F22CH
          P3MOD0          0F22CH
          P3MOD1          0F22DH
        P3MOD23         0F22EH
          P3MOD2          0F22EH
          P3MOD3          0F22FH
          P4D             0F230H
          P4DIR           0F231H
        P4CON           0F232H
          P4CON0          0F232H
          P4CON1          0F233H
        P4MOD           0F234H
          P4MOD0          0F234H
          P4MOD1          0F235H
          P5D             0F238H
          P5DIR           0F239H
        P5CON           0F23AH
          P5CON0          0F23AH
          P5CON1          0F23BH
        P5MOD01         0F23CH
          P5MOD0          0F23CH
          P5MOD1          0F23DH
        P5MOD23         0F23EH
          P5MOD2          0F23EH
          P5MOD3          0F23FH
          P6D             0F240H
          P6DIR           0F241H
        P6CON           0F242H
          P6CON0          0F242H
          P6CON1          0F243H
        P6MOD           0F244H
          P6MOD0          0F244H
          P6MOD1          0F245H
          P7D             0F248H
          P7DIR           0F249H
        P7CON           0F24AH
          P7CON0          0F24AH
          P7CON1          0F24BH
        P7MOD           0F24CH
          P7MOD0          0F24CH
          P7MOD1          0F24DH
          P8D             0F250H
          P8DIR           0F251H
        P8CON           0F252H
          P8CON0          0F252H
          P8CON1          0F253H
        P8MOD           0F254H
          P8MOD0          0F254H
          P8MOD1          0F255H
        TM01D           0F300H
          TM0D            0F300H
          TM1D            0F301H
        TM23D           0F302H
          TM2D            0F302H
          TM3D            0F303H
        TM45D           0F304H
          TM4D            0F304H
          TM5D            0F305H
        TM67D           0F306H
          TM6D            0F306H
          TM7D            0F307H
        TM01C           0F310H
          TM0C            0F310H
          TM1C            0F311H
        TM23C           0F312H
          TM2C            0F312H
          TM3C            0F313H
        TM45C           0F314H
          TM4C            0F314H
          TM5C            0F315H
        TM67C           0F316H
          TM6C            0F316H
          TM7C            0F317H
        TM01CON         0F320H
          TM0CON          0F320H
          TM1CON          0F321H
        TM23CON         0F322H
          TM2CON          0F322H
          TM3CON          0F323H
        TM45CON         0F324H
          TM4CON          0F324H
          TM5CON          0F325H
        TM67CON         0F326H
          TM6CON          0F326H
          TM7CON          0F327H
          TMSTR0          0F330H
          TMSTP0          0F332H
          TMSTAT0         0F334H
          RTC0SEC         0F3C0H
          RTC0MIN         0F3C1H
          RTC0HOUR        0F3C2H
          RTC0WEEK        0F3C3H
          RTC0DAY         0F3C4H
          RTC0MON         0F3C5H
          RTC0YEAR        0F3C6H
          RTC0CON         0F3C7H
          AL10MIN         0F3CBH
          AL10HOUR        0F3CCH
          AL10DAY         0F3CDH
          AL10MON         0F3CEH
          RTC1SEC         0F3D0H
          RTC1MIN         0F3D1H
          RTC1HOUR        0F3D2H
          RTC1WEEK        0F3D3H
          RTC1DAY         0F3D4H
          RTC1MON         0F3D5H
          RTC1YEAR        0F3D6H
          RTC1CON         0F3D7H
          AL11MIN         0F3DBH
          AL11HOUR        0F3DCH
          AL11DAY         0F3DDH
          AL11MON         0F3DEH
          RTC2SEC         0F3E0H
          RTC2MIN         0F3E1H
          RTC2HOUR        0F3E2H
          RTC2WEEK        0F3E3H
          RTC2DAY         0F3E4H
          RTC2MON         0F3E5H
          RTC2YEAR        0F3E6H
          RTC2CON         0F3E7H
          AL12MIN         0F3EBH
          AL12HOUR        0F3ECH
          AL12DAY         0F3EDH
          AL12MON         0F3EEH
        FT0P            0F400H
        FT0EA           0F402H
        FT0EB           0F404H
        FT0DT           0F406H
        FT0C            0F408H
          FT0CON0         0F40AH
          FT0CON1         0F40BH
        FT0MOD          0F40CH
          FT0MODL         0F40CH
          FT0MODH         0F40DH
        FT0CLK          0F40EH
          FT0CLKL         0F40EH
          FT0CLKH         0F40FH
        FT0TRG0         0F410H
          FT0TRG0L        0F410H
          FT0TRG0H        0F411H
        FT0TRG1         0F412H
          FT0TRG1L        0F412H
          FT0TRG1H        0F413H
        FT0INTE         0F418H
          FT0INTEL        0F418H
          FT0INTEH        0F419H
        FT0INTS         0F41AH
          FT0INTSL        0F41AH
        FT0INTC         0F41CH
          FT0INTCL        0F41CH
          FT0INTCH        0F41DH
        FT1P            0F420H
        FT1EA           0F422H
        FT1EB           0F424H
        FT1DT           0F426H
        FT1C            0F428H
          FT1CON0         0F42AH
          FT1CON1         0F42BH
        FT1MOD          0F42CH
          FT1MODL         0F42CH
          FT1MODH         0F42DH
        FT1CLK          0F42EH
          FT1CLKL         0F42EH
          FT1CLKH         0F42FH
        FT1TRG0         0F430H
          FT1TRG0L        0F430H
          FT1TRG0H        0F431H
        FT1TRG1         0F432H
          FT1TRG1L        0F432H
          FT1TRG1H        0F433H
        FT1INTE         0F438H
          FT1INTEL        0F438H
          FT1INTEH        0F439H
        FT1INTS         0F43AH
          FT1INTSL        0F43AH
        FT1INTC         0F43CH
          FT1INTCL        0F43CH
          FT1INTCH        0F43DH
        FT2P            0F440H
        FT2EA           0F442H
        FT2EB           0F444H
        FT2DT           0F446H
        FT2C            0F448H
          FT2CON0         0F44AH
          FT2CON1         0F44BH
        FT2MOD          0F44CH
          FT2MODL         0F44CH
          FT2MODH         0F44DH
        FT2CLK          0F44EH
          FT2CLKL         0F44EH
          FT2CLKH         0F44FH
        FT2TRG0         0F450H
          FT2TRG0L        0F450H
          FT2TRG0H        0F451H
        FT2TRG1         0F452H
          FT2TRG1L        0F452H
          FT2TRG1H        0F453H
        FT2INTE         0F458H
          FT2INTEL        0F458H
          FT2INTEH        0F459H
        FT2INTS         0F45AH
          FT2INTSL        0F45AH
        FT2INTC         0F45CH
          FT2INTCL        0F45CH
          FT2INTCH        0F45DH
        FT3P            0F460H
        FT3EA           0F462H
        FT3EB           0F464H
        FT3DT           0F466H
        FT3C            0F468H
          FT3CON0         0F46AH
          FT3CON1         0F46BH
        FT3MOD          0F46CH
          FT3MODL         0F46CH
          FT3MODH         0F46DH
        FT3CLK          0F46EH
          FT3CLKL         0F46EH
          FT3CLKH         0F46FH
        FT3TRG0         0F470H
          FT3TRG0L        0F470H
          FT3TRG0H        0F471H
        FT3TRG1         0F472H
          FT3TRG1L        0F472H
          FT3TRG1H        0F473H
        FT3INTE         0F478H
          FT3INTEL        0F478H
          FT3INTEH        0F479H
        FT3INTS         0F47AH
          FT3INTSL        0F47AH
        FT3INTC         0F47CH
          FT3INTCL        0F47CH
          FT3INTCH        0F47DH
        FTO01SL         0F480H
          FTO0SL          0F480H
          FTO1SL          0F481H
        FTO23SL         0F482H
          FTO2SL          0F482H
          FTO3SL          0F483H
        FTO45SL         0F484H
          FTO4SL          0F484H
          FTO5SL          0F485H
        FTO67SL         0F486H
          FTO6SL          0F486H
          FTO7SL          0F487H
        FTO89SL         0F488H
          FTO8SL          0F488H
          FTO9SL          0F489H
        FTOABSL         0F48AH
          FTOASL          0F48AH
          FTOBSL          0F48BH
        FTOCDSL         0F48CH
          FTOCSL          0F48CH
          FTODSL          0F48DH
        FTOEFSL         0F48EH
          FTOESL          0F48EH
          FTOFSL          0F48FH
        SIO0BUF         0F700H
          SIO0BUFL        0F700H
          SIO0BUFH        0F701H
          SIO0CON         0F702H
        SIO0MOD         0F704H
          SIO0MOD0        0F704H
          SIO0MOD1        0F705H
          UA0BUF          0F710H
          UA0CON          0F711H
        UA0MOD          0F712H
          UA0MOD0         0F712H
          UA0MOD1         0F713H
        UA0BRT          0F714H
          UA0BRTL         0F714H
          UA0BRTH         0F715H
          UA0STAT         0F716H
          UA1BUF          0F718H
          UA1CON          0F719H
          UA1STAT         0F71EH
        I2F0SAD         0F720H
          I2F0SADL        0F720H
          I2F0SADH        0F721H
        I2F0CTL         0F722H
          I2F0CTLL        0F722H
          I2F0CTLH        0F723H
        I2F0SR          0F724H
          I2F0SRL         0F724H
          I2F0SRH         0F725H
        I2F0DR          0F726H
          I2F0DRL         0F726H
          I2F0DRH         0F727H
        I2F0MON         0F728H
          I2F0MONL        0F728H
          I2F0MONH        0F729H
        I2F0BC          0F72AH
          I2F0BCL         0F72AH
          I2F0BCH         0F72BH
        I2F0MOD         0F72CH
          I2F0MODL        0F72CH
          I2F0MODH        0F72DH
        I2F0BSV         0F72EH
          I2F0BSVL        0F72EH
          I2F0BSVH        0F72FH
        I2F0BSB         0F730H
          I2F0BSBL        0F730H
          I2F0BSBH        0F731H
        I2F0BFR         0F732H
          I2F0BFRL        0F732H
          I2F0BFRH        0F733H
        I2F0BCT         0F734H
          I2F0BCTL        0F734H
          I2F0BCTH        0F735H
        I2F0BMK         0F736H
          I2F0BMKL        0F736H
          I2F0BMKH        0F737H
        I2F0BSR         0F738H
          I2F0BSRL        0F738H
          I2F0BSRH        0F739H
        I2F0BLV         0F73AH
          I2F0BLVL        0F73AH
          I2F0BLVH        0F73BH
        I2F0TMR         0F744H
          I2F0TMRL        0F744H
          I2F0TMRH        0F745H
        I2F0NF          0F748H
          I2F0NFL         0F748H
          I2F0NFH         0F749H
        I2F0IU          0F74EH
          I2F0IUL         0F74EH
          I2F0IUH         0F74FH
          I2C1RD          0F750H
          I2C1SA          0F752H
          I2C1TD          0F754H
        I2C1CON         0F756H
          I2C1CON0        0F756H
          I2C1CON1        0F757H
        I2C1MOD         0F758H
          I2C1MODL        0F758H
          I2C1MODH        0F759H
        I2C1STA         0F75AH
          I2C1STAL        0F75AH
          I2C1STAH        0F75BH
        SF0CTRL         0F780H
          SF0CTRLL        0F780H
          SF0CTRLH        0F781H
        SF0INTC         0F782H
          SF0INTCL        0F782H
          SF0INTCH        0F783H
        SF0TRAC         0F784H
          SF0TRACL        0F784H
          SF0TRACH        0F785H
        SF0BRR          0F786H
          SF0BRRL         0F786H
          SF0BRRH         0F787H
        SF0SRR          0F788H
          SF0SRRL         0F788H
          SF0SRRH         0F789H
        SF0SRC          0F78AH
          SF0SRCL         0F78AH
          SF0SRCH         0F78BH
        SF0FSR          0F78CH
          SF0FSRL         0F78CH
          SF0FSRH         0F78DH
        SF0DWR          0F78EH
          SF0DWRL         0F78EH
          SF0DWRH         0F78FH
        SF0DRR          0F790H
          SF0DRRL         0F790H
          SF0DRRH         0F791H
        UAF1BUF         0F7A0H
          UAF1BUFL        0F7A0H
          UAF1BUFH        0F7A1H
        UAF1IER         0F7A2H
          UAF1IERL        0F7A2H
        UAF1IIR         0F7A4H
          UAF1IIRL        0F7A4H
        UAF1MOD         0F7A6H
          UAF1MODL        0F7A6H
          UAF1MODH        0F7A7H
        UAF1LSR         0F7A8H
          UAF1LSRL        0F7A8H
          UAF1LSRH        0F7A9H
        UAF1CAJ         0F7AAH
          UAF1CAJL        0F7AAH
        UAF1IRQ         0F7ACH
          UAF1IRQL        0F7ACH
        UAF0BUF         0F7C0H
          UAF0BUFL        0F7C0H
          UAF0BUFH        0F7C1H
        UAF0IER         0F7C2H
          UAF0IERL        0F7C2H
        UAF0IIR         0F7C4H
          UAF0IIRL        0F7C4H
        UAF0MOD         0F7C6H
          UAF0MODL        0F7C6H
          UAF0MODH        0F7C7H
        UAF0LSR         0F7C8H
          UAF0LSRL        0F7C8H
          UAF0LSRH        0F7C9H
        UAF0CAJ         0F7CAH
          UAF0CAJL        0F7CAH
        UAF0IRQ         0F7CCH
          UAF0IRQL        0F7CCH
        I2F1SAD         0F7D0H
          I2F1SADL        0F7D0H
          I2F1SADH        0F7D1H
        I2F1CTL         0F7D2H
          I2F1CTLL        0F7D2H
          I2F1CTLH        0F7D3H
        I2F1SR          0F7D4H
          I2F1SRL         0F7D4H
          I2F1SRH         0F7D5H
        I2F1DR          0F7D6H
          I2F1DRL         0F7D6H
          I2F1DRH         0F7D7H
        I2F1MON         0F7D8H
          I2F1MONL        0F7D8H
          I2F1MONH        0F7D9H
        I2F1BC          0F7DAH
          I2F1BCL         0F7DAH
          I2F1BCH         0F7DBH
        I2F1MOD         0F7DCH
          I2F1MODL        0F7DCH
          I2F1MODH        0F7DDH
        I2F1BSV         0F7DEH
          I2F1BSVL        0F7DEH
          I2F1BSVH        0F7DFH
        I2F1BSB         0F7E0H
          I2F1BSBL        0F7E0H
          I2F1BSBH        0F7E1H
        I2F1BFR         0F7E2H
          I2F1BFRL        0F7E2H
          I2F1BFRH        0F7E3H
        I2F1BCT         0F7E4H
          I2F1BCTL        0F7E4H
          I2F1BCTH        0F7E5H
        I2F1BMK         0F7E6H
          I2F1BMKL        0F7E6H
          I2F1BMKH        0F7E7H
        I2F1BSR         0F7E8H
          I2F1BSRL        0F7E8H
          I2F1BSRH        0F7E9H
        I2F1BLV         0F7EAH
          I2F1BLVL        0F7EAH
          I2F1BLVH        0F7EBH
        I2F1TMR         0F7F4H
          I2F1TMRL        0F7F4H
          I2F1TMRH        0F7F5H
        I2F1NF          0F7F8H
          I2F1NFL         0F7F8H
          I2F1NFH         0F7F9H
        I2F1IU          0F7FEH
          I2F1IUL         0F7FEH
          I2F1IUH         0F7FFH
        RADCA0          0F800H
          RADCA0L         0F800H
          RADCA0H         0F801H
        RADCA1          0F802H
          RADCA1L         0F802H
          RADCA1H         0F803H
        RADCB0          0F804H
          RADCB0L         0F804H
          RADCB0H         0F805H
        RADCB1          0F806H
          RADCB1L         0F806H
          RADCB1H         0F807H
        RADMOD          0F808H
          RADMODL         0F808H
          RADMODH         0F809H
          RADCONL         0F80AH
        SADR0           0F820H
          SADR0L          0F820H
          SADR0H          0F821H
        SADR1           0F822H
          SADR1L          0F822H
          SADR1H          0F823H
        SADR2           0F824H
          SADR2L          0F824H
          SADR2H          0F825H
        SADR3           0F826H
          SADR3L          0F826H
          SADR3H          0F827H
        SADR4           0F828H
          SADR4L          0F828H
          SADR4H          0F829H
        SADR5           0F82AH
          SADR5L          0F82AH
          SADR5H          0F82BH
        SADR6           0F82CH
          SADR6L          0F82CH
          SADR6H          0F82DH
        SADR7           0F82EH
          SADR7L          0F82EH
          SADR7H          0F82FH
        SADR8           0F830H
          SADR8L          0F830H
          SADR8H          0F831H
        SADR9           0F832H
          SADR9L          0F832H
          SADR9H          0F833H
        SADRA           0F834H
          SADRAL          0F834H
          SADRAH          0F835H
        SADRB           0F836H
          SADRBL          0F836H
          SADRBH          0F837H
          SADCON0         0F840H
          SADCON1         0F841H
        SADEN           0F842H
          SADENL          0F842H
          SADENH          0F843H
        SADTCH          0F844H
          SADTCHL         0F844H
          SADTCHH         0F845H
        SADTRG          0F846H
          SADTRGL         0F846H
          SADTRGH         0F847H
        SADCVT          0F848H
          SADCVTL         0F848H
          SADCVTH         0F849H
          MD0CON          0F8C0H
          MD0TMP          0F8C1H
        MD0TL           0F8C2H
          MD0TON          0F8C2H
          MD0LEN          0F8C3H
        VLSCON          0F900H
          VLSCONL         0F900H
          VLSCONH         0F901H
        VLSMOD          0F902H
          VLSMODL         0F902H
          VLSMODH         0F903H
          CMP0CON         0F920H
        CMP0MOD         0F922H
          CMP0MODL        0F922H
          CMP0MODH        0F923H
          CMP1CON         0F928H
        CMP1MOD         0F92AH
          CMP1MODL        0F92AH
          CMP1MODH        0F92BH
        P0EXI01         0F980H
          P0EXI0          0F980H
          P0EXI1          0F981H
        P0EXI23         0F982H
          P0EXI2          0F982H
          P0EXI3          0F983H
          P0IE            0F984H
          P0IS            0F985H
          P0IC            0F986H
          P0IU            0F987H
        P2EXI01         0F990H
          P2EXI0          0F990H
          P2EXI1          0F991H
          P2IE            0F994H
          P2IS            0F995H
          P2IC            0F996H
          P2IU            0F997H
        P3EXI01         0F998H
          P3EXI0          0F998H
          P3EXI1          0F999H
        P3EXI23         0F99AH
          P3EXI2          0F99AH
          P3EXI3          0F99BH
          P3IE            0F99CH
          P3IS            0F99DH
          P3IC            0F99EH
          P3IU            0F99FH
        P4EXI01         0F9A0H
          P4EXI0          0F9A0H
          P4EXI1          0F9A1H
        P4EXI23         0F9A2H
          P4EXI2          0F9A2H
          P4EXI3          0F9A3H
          P4IE            0F9A4H
          P4IS            0F9A5H
          P4IC            0F9A6H
          P4IU            0F9A7H
        P5EXI01         0F9A8H
          P5EXI0          0F9A8H
          P5EXI1          0F9A9H
        P5EXI23         0F9AAH
          P5EXI2          0F9AAH
          P5EXI3          0F9ABH
          P5IE            0F9ACH
          P5IS            0F9ADH
          P5IC            0F9AEH
          P5IU            0F9AFH
        P7EXI01         0F9B8H
          P7EXI0          0F9B8H
          P7EXI1          0F9B9H
        P7EXI23         0F9BAH
          P7EXI2          0F9BAH
          P7EXI3          0F9BBH
          P7IE            0F9BCH
          P7IS            0F9BDH
          P7IC            0F9BEH
          P7IU            0F9BFH
        P8EXI01         0F9C0H
          P8EXI0          0F9C0H
          P8EXI1          0F9C1H
        P8EXI23         0F9C2H
          P8EXI2          0F9C2H
          P8EXI3          0F9C3H
          P8IE            0F9C4H
          P8IS            0F9C5H
          P8IC            0F9C6H
          P8IU            0F9C7H
        COMMSK0         0F9F0H
          COMMSK0L        0F9F0H
          COMMSK0H        0F9F1H
        COMMSK1         0F9F2H
          COMMSK1L        0F9F2H
          COMMSK1H        0F9F3H
        DSPR100W        0FA00H
          DSPR100         0FA00H
          DSPR101         0FA01H
        DSPR102W        0FA02H
          DSPR102         0FA02H
          DSPR103         0FA03H
        DSPR104W        0FA04H
          DSPR104         0FA04H
          DSPR105         0FA05H
        DSPR106W        0FA06H
          DSPR106         0FA06H
          DSPR107         0FA07H
        DSPR108W        0FA08H
          DSPR108         0FA08H
          DSPR109         0FA09H
        DSPR10AW        0FA0AH
          DSPR10A         0FA0AH
          DSPR10B         0FA0BH
        DSPR10CW        0FA0CH
          DSPR10C         0FA0CH
          DSPR10D         0FA0DH
        DSPR10EW        0FA0EH
          DSPR10E         0FA0EH
          DSPR10F         0FA0FH
        DSPR110W        0FA10H
          DSPR110         0FA10H
          DSPR111         0FA11H
        DSPR112W        0FA12H
          DSPR112         0FA12H
          DSPR113         0FA13H
        DSPR114W        0FA14H
          DSPR114         0FA14H
          DSPR115         0FA15H
        DSPR116W        0FA16H
          DSPR116         0FA16H
          DSPR117         0FA17H
        DSPR118W        0FA18H
          DSPR118         0FA18H
          DSPR119         0FA19H
        DSPR11AW        0FA1AH
          DSPR11A         0FA1AH
          DSPR11B         0FA1BH
        DSPR11CW        0FA1CH
          DSPR11C         0FA1CH
          DSPR11D         0FA1DH
        DSPR11EW        0FA1EH
          DSPR11E         0FA1EH
          DSPR11F         0FA1FH
        DSPR120W        0FA20H
          DSPR120         0FA20H
          DSPR121         0FA21H
        DSPR122W        0FA22H
          DSPR122         0FA22H
          DSPR123         0FA23H
        DSPR124W        0FA24H
          DSPR124         0FA24H
          DSPR125         0FA25H
        DSPR126W        0FA26H
          DSPR126         0FA26H
          DSPR127         0FA27H
        DSPR128W        0FA28H
          DSPR128         0FA28H
          DSPR129         0FA29H
        DSPR12AW        0FA2AH
          DSPR12A         0FA2AH
          DSPR12B         0FA2BH
        DSPR12CW        0FA2CH
          DSPR12C         0FA2CH
          DSPR12D         0FA2DH
        DSPR12EW        0FA2EH
          DSPR12E         0FA2EH
          DSPR12F         0FA2FH
        DSPR130W        0FA30H
          DSPR130         0FA30H
          DSPR131         0FA31H
        DSPR132W        0FA32H
          DSPR132         0FA32H
          DSPR133         0FA33H
        DSPR134W        0FA34H
          DSPR134         0FA34H
          DSPR135         0FA35H
        DSPR136W        0FA36H
          DSPR136         0FA36H
          DSPR137         0FA37H
        DSPR138W        0FA38H
          DSPR138         0FA38H
          DSPR139         0FA39H
        DSPR13AW        0FA3AH
          DSPR13A         0FA3AH
          DSPR13B         0FA3BH
        DSPR13CW        0FA3CH
          DSPR13C         0FA3CH
          DSPR13D         0FA3DH
        DSPR13EW        0FA3EH
          DSPR13E         0FA3EH
          DSPR13F         0FA3FH
        DSPR140W        0FA40H
          DSPR140         0FA40H
          DSPR141         0FA41H
        DSPR142W        0FA42H
          DSPR142         0FA42H
          DSPR143         0FA43H
        DSPR144W        0FA44H
          DSPR144         0FA44H
          DSPR145         0FA45H
        DSPR146W        0FA46H
          DSPR146         0FA46H
          DSPR147         0FA47H
        DSPR148W        0FA48H
          DSPR148         0FA48H
          DSPR149         0FA49H
        DSPR14AW        0FA4AH
          DSPR14A         0FA4AH
          DSPR14B         0FA4BH
        DSPR14CW        0FA4CH
          DSPR14C         0FA4CH
          DSPR14D         0FA4DH
        DSPR14EW        0FA4EH
          DSPR14E         0FA4EH
          DSPR14F         0FA4FH
        DSPR150W        0FA50H
          DSPR150         0FA50H
          DSPR151         0FA51H
        DSPR152W        0FA52H
          DSPR152         0FA52H
          DSPR153         0FA53H
        DSPR154W        0FA54H
          DSPR154         0FA54H
          DSPR155         0FA55H
        DSPR156W        0FA56H
          DSPR156         0FA56H
          DSPR157         0FA57H
        DSPR158W        0FA58H
          DSPR158         0FA58H
          DSPR159         0FA59H
        DSPR15AW        0FA5AH
          DSPR15A         0FA5AH
          DSPR15B         0FA5BH
        DSPR15CW        0FA5CH
          DSPR15C         0FA5CH
          DSPR15D         0FA5DH
        DSPR15EW        0FA5EH
          DSPR15E         0FA5EH
          DSPR15F         0FA5FH
        DSPR160W        0FA60H
          DSPR160         0FA60H
          DSPR161         0FA61H
        DSPR162W        0FA62H
          DSPR162         0FA62H
          DSPR163         0FA63H
        DSPR164W        0FA64H
          DSPR164         0FA64H
          DSPR165         0FA65H
        DSPR166W        0FA66H
          DSPR166         0FA66H
          DSPR167         0FA67H
        DSPR168W        0FA68H
          DSPR168         0FA68H
          DSPR169         0FA69H
        DSPR16AW        0FA6AH
          DSPR16A         0FA6AH
          DSPR16B         0FA6BH
        DSPR16CW        0FA6CH
          DSPR16C         0FA6CH
          DSPR16D         0FA6DH
        DSPR16EW        0FA6EH
          DSPR16E         0FA6EH
          DSPR16F         0FA6FH
        DSPR170W        0FA70H
          DSPR170         0FA70H
          DSPR171         0FA71H
        DSPR172W        0FA72H
          DSPR172         0FA72H
          DSPR173         0FA73H
        DSPR174W        0FA74H
          DSPR174         0FA74H
          DSPR175         0FA75H
        DSPR176W        0FA76H
          DSPR176         0FA76H
          DSPR177         0FA77H
        DSPR178W        0FA78H
          DSPR178         0FA78H
          DSPR179         0FA79H
        DSPR17AW        0FA7AH
          DSPR17A         0FA7AH
          DSPR17B         0FA7BH
        DSPR17CW        0FA7CH
          DSPR17C         0FA7CH
          DSPR17D         0FA7DH
        DSPR17EW        0FA7EH
          DSPR17E         0FA7EH
          DSPR17F         0FA7FH
        DSPR180W        0FA80H
          DSPR180         0FA80H
          DSPR181         0FA81H
        DSPR182W        0FA82H
          DSPR182         0FA82H
          DSPR183         0FA83H
        DSPR184W        0FA84H
          DSPR184         0FA84H
          DSPR185         0FA85H
        DSPR186W        0FA86H
          DSPR186         0FA86H
          DSPR187         0FA87H
        DSPR188W        0FA88H
          DSPR188         0FA88H
          DSPR189         0FA89H
        DSPR18AW        0FA8AH
          DSPR18A         0FA8AH
          DSPR18B         0FA8BH
        DSPR18CW        0FA8CH
          DSPR18C         0FA8CH
          DSPR18D         0FA8DH
        DSPR18EW        0FA8EH
          DSPR18E         0FA8EH
          DSPR18F         0FA8FH
        DSPR190W        0FA90H
          DSPR190         0FA90H
          DSPR191         0FA91H
        DSPR192W        0FA92H
          DSPR192         0FA92H
          DSPR193         0FA93H
        DSPR194W        0FA94H
          DSPR194         0FA94H
          DSPR195         0FA95H
        DSPR196W        0FA96H
          DSPR196         0FA96H
          DSPR197         0FA97H
        DSPR198W        0FA98H
          DSPR198         0FA98H
          DSPR199         0FA99H
        DSPR19AW        0FA9AH
          DSPR19A         0FA9AH
          DSPR19B         0FA9BH
        DSPR19CW        0FA9CH
          DSPR19C         0FA9CH
          DSPR19D         0FA9DH
        DSPR19EW        0FA9EH
          DSPR19E         0FA9EH
          DSPR19F         0FA9FH
        DSPR1A0W        0FAA0H
          DSPR1A0         0FAA0H
          DSPR1A1         0FAA1H
        DSPR1A2W        0FAA2H
          DSPR1A2         0FAA2H
          DSPR1A3         0FAA3H
        DSPR1A4W        0FAA4H
          DSPR1A4         0FAA4H
          DSPR1A5         0FAA5H
        DSPR1A6W        0FAA6H
          DSPR1A6         0FAA6H
          DSPR1A7         0FAA7H
        DSPR1A8W        0FAA8H
          DSPR1A8         0FAA8H
          DSPR1A9         0FAA9H
        DSPR1AAW        0FAAAH
          DSPR1AA         0FAAAH
          DSPR1AB         0FAABH
        DSPR1ACW        0FAACH
          DSPR1AC         0FAACH
          DSPR1AD         0FAADH
        DSPR1AEW        0FAAEH
          DSPR1AE         0FAAEH
          DSPR1AF         0FAAFH
        DSPR1B0W        0FAB0H
          DSPR1B0         0FAB0H
          DSPR1B1         0FAB1H
        DSPR1B2W        0FAB2H
          DSPR1B2         0FAB2H
          DSPR1B3         0FAB3H
        DSPR1B4W        0FAB4H
          DSPR1B4         0FAB4H
          DSPR1B5         0FAB5H
        DSPR1B6W        0FAB6H
          DSPR1B6         0FAB6H
          DSPR1B7         0FAB7H
        DSPR1B8W        0FAB8H
          DSPR1B8         0FAB8H
          DSPR1B9         0FAB9H
        DSPR1BAW        0FABAH
          DSPR1BA         0FABAH
          DSPR1BB         0FABBH
        DSPR1BCW        0FABCH
          DSPR1BC         0FABCH
          DSPR1BD         0FABDH
        DSPR1BEW        0FABEH
          DSPR1BE         0FABEH
          DSPR1BF         0FABFH
        DSPR1C0W        0FAC0H
          DSPR1C0         0FAC0H
          DSPR1C1         0FAC1H
        DSPR1C2W        0FAC2H
          DSPR1C2         0FAC2H
          DSPR1C3         0FAC3H
        DSPR1C4W        0FAC4H
          DSPR1C4         0FAC4H
          DSPR1C5         0FAC5H
        DSPR1C6W        0FAC6H
          DSPR1C6         0FAC6H
          DSPR1C7         0FAC7H
        DSPR1C8W        0FAC8H
          DSPR1C8         0FAC8H
          DSPR1C9         0FAC9H
        DSPR1CAW        0FACAH
          DSPR1CA         0FACAH
          DSPR1CB         0FACBH
        DSPR1CCW        0FACCH
          DSPR1CC         0FACCH
          DSPR1CD         0FACDH
        DSPR1CEW        0FACEH
          DSPR1CE         0FACEH
          DSPR1CF         0FACFH
        DSPR1D0W        0FAD0H
          DSPR1D0         0FAD0H
          DSPR1D1         0FAD1H
        DSPR1D2W        0FAD2H
          DSPR1D2         0FAD2H
          DSPR1D3         0FAD3H
        DSPR1D4W        0FAD4H
          DSPR1D4         0FAD4H
          DSPR1D5         0FAD5H
        DSPR1D6W        0FAD6H
          DSPR1D6         0FAD6H
          DSPR1D7         0FAD7H
        DSPR1D8W        0FAD8H
          DSPR1D8         0FAD8H
          DSPR1D9         0FAD9H
        DSPR1DAW        0FADAH
          DSPR1DA         0FADAH
          DSPR1DB         0FADBH
        DSPR1DCW        0FADCH
          DSPR1DC         0FADCH
          DSPR1DD         0FADDH
        DSPR1DEW        0FADEH
          DSPR1DE         0FADEH
          DSPR1DF         0FADFH
        DSPR1E0W        0FAE0H
          DSPR1E0         0FAE0H
          DSPR1E1         0FAE1H
        DSPR1E2W        0FAE2H
          DSPR1E2         0FAE2H
          DSPR1E3         0FAE3H
        DSPR1E4W        0FAE4H
          DSPR1E4         0FAE4H
          DSPR1E5         0FAE5H
        DSPR1E6W        0FAE6H
          DSPR1E6         0FAE6H
          DSPR1E7         0FAE7H
        DSPR1E8W        0FAE8H
          DSPR1E8         0FAE8H
          DSPR1E9         0FAE9H
        DSPR1EAW        0FAEAH
          DSPR1EA         0FAEAH
          DSPR1EB         0FAEBH
        DSPR1ECW        0FAECH
          DSPR1EC         0FAECH
          DSPR1ED         0FAEDH
        DSPR1EEW        0FAEEH
          DSPR1EE         0FAEEH
          DSPR1EF         0FAEFH
        DSPR1F0W        0FAF0H
          DSPR1F0         0FAF0H
          DSPR1F1         0FAF1H
        DSPR1F2W        0FAF2H
          DSPR1F2         0FAF2H
          DSPR1F3         0FAF3H
        DSPR1F4W        0FAF4H
          DSPR1F4         0FAF4H
          DSPR1F5         0FAF5H
        DSPR1F6W        0FAF6H
          DSPR1F6         0FAF6H
          DSPR1F7         0FAF7H
        DSPR1F8W        0FAF8H
          DSPR1F8         0FAF8H
          DSPR1F9         0FAF9H
        DSPR1FAW        0FAFAH
          DSPR1FA         0FAFAH
          DSPR1FB         0FAFBH
        DSPR1FCW        0FAFCH
          DSPR1FC         0FAFCH
          DSPR1FD         0FAFDH
        DSPR1FEW        0FAFEH
          DSPR1FE         0FAFEH
          DSPR1FF         0FAFFH

;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;       BIT ADDRESS SYMBOLS
;
;       definition of BIT type symbols
;
;       - SYNTAX -
;       #DEFBIT
;               Symbol  Bit_Address
;               ....................
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#DEFBIT

;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;       SFR AREA
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
        DSR0            DSR.0
        DSR1            DSR.1
        DSR2            DSR.2
        DSR3            DSR.3

        SYSC0           FCON0.0
        SYSC1           FCON0.1
        SYSC2           FCON0.2
        OSCM0           FCON0.3
        OSCM1           FCON0.4

        SYSCLK          FCON1.0
        ENOSC           FCON1.1
        ENPLL           FCON1.2
        XSPEN           FCON1.4
        LOSST           FCON1.6
        LPLL            FCON1.7

        XTM0            FCON2.0
        XTM1            FCON2.1
        OUTLC           FCON2.3
        LFLTSEL         FCON2.4

        CR16DC          FCON3.0
        CR16ENC         FCON3.1

        TRPLL0          FCON4.0
        TRPLL1          FCON4.1
        TRPLL2          FCON4.2
        TRPLL3          FCON4.3
        TRPLL4          FCON4.4
        TRPLL5          FCON4.5
        TRPLL6          FCON4.6
        TRPLL7          FCON4.7

        TRPLL8          FCON5.0

        HLT             SBYCON.0
        STP             SBYCON.1
        DHLT            SBYCON.2
        HLTH            SBYCON.3

        LOSCS           FSTAT.2
        C16MCDO         FSTAT.6
        C16MBS          FSTAT.7

        POR             RSTAT.0
        XSTR            RSTAT.1
        WDTR            RSTAT.2
        VLSR            RSTAT.3
        LLDR            RSTAT.4

        WDP             WDTCON.0

        WDT0            WDTMOD.0
        WDT1            WDTMOD.1
        HLTEN           WDTMOD.7

        EEXI0           IE1.0
        EEXI1           IE1.1
        EEXI2           IE1.2
        EEXI3           IE1.3
        EEXI4           IE1.4
        EEXI5           IE1.5
        EEXI6           IE1.6
        EEXI7           IE1.7

        ESIO0           IE2.0
        ESIOF0          IE2.1
        EI2C1           IE2.3
        EUA0            IE2.4
        EUA1            IE2.5
        EUAF0           IE2.6
        EUAF1           IE2.7

        EI2CF0          IE3.0
        EI2CF1          IE3.1
        ELOSC           IE3.5
        EVLS            IE3.6
        EMD0            IE3.7

        ESAD            IE4.0
        ERAD            IE4.1
        ECMP0           IE4.4
        ECMP1           IE4.5

        ETM0            IE5.0
        ETM1            IE5.1
        ETM2            IE5.2
        ETM3            IE5.3
        ETM4            IE5.4
        ETM5            IE5.5
        ETM6            IE5.6
        ETM7            IE5.7

        EFTM0           IE6.0
        EFTM1           IE6.1
        EFTM2           IE6.2
        EFTM3           IE6.3
        ERTC1           IE6.4
        EAL11           IE6.5
        ETM1K           IE6.7

        ELTBC0          IE7.0
        ELTBC1          IE7.1
        ELTBC2          IE7.2
        ELCD            IE7.3
        ERTC2           IE7.4
        EAL12           IE7.5
        ERTC0           IE7.6
        EAL10           IE7.7

        QWDT            IRQ0.0

        QEXI0           IRQ1.0
        QEXI1           IRQ1.1
        QEXI2           IRQ1.2
        QEXI3           IRQ1.3
        QEXI4           IRQ1.4
        QEXI5           IRQ1.5
        QEXI6           IRQ1.6
        QEXI7           IRQ1.7

        QSIO0           IRQ2.0
        QSIOF0          IRQ2.1
        QI2C1           IRQ2.3
        QUA0            IRQ2.4
        QUA1            IRQ2.5
        QUAF0           IRQ2.6
        QUAF1           IRQ2.7

        QI2CF0          IRQ3.0
        QI2CF1          IRQ3.1
        QLOSC           IRQ3.5
        QVLS            IRQ3.6
        QMD0            IRQ3.7

        QSAD            IRQ4.0
        QRAD            IRQ4.1
        QCMP0           IRQ4.4
        QCMP1           IRQ4.5

        QTM0            IRQ5.0
        QTM1            IRQ5.1
        QTM2            IRQ5.2
        QTM3            IRQ5.3
        QTM4            IRQ5.4
        QTM5            IRQ5.5
        QTM6            IRQ5.6
        QTM7            IRQ5.7

        QFTM0           IRQ6.0
        QFTM1           IRQ6.1
        QFTM2           IRQ6.2
        QFTM3           IRQ6.3
        QRTC1           IRQ6.4
        QAL11           IRQ6.5
        QTM1K           IRQ6.7

        QLTBC0          IRQ7.0
        QLTBC1          IRQ7.1
        QLTBC2          IRQ7.2
        QLCD            IRQ7.3
        QRTC2           IRQ7.4
        QAL12           IRQ7.5
        QRTC0           IRQ7.6
        QAL10           IRQ7.7

        ILE             ILENL.0

        CILM0           CILL.0
        CILM1           CILL.1
        CILM2           CILL.2
        CILM3           CILL.3
        CILN            CILL.7

        L0EXI0          ILC1L.0
        L1EXI0          ILC1L.1
        L0EXI1          ILC1L.2
        L1EXI1          ILC1L.3
        L0EXI2          ILC1L.4
        L1EXI2          ILC1L.5
        L0EXI3          ILC1L.6
        L1EXI3          ILC1L.7

        L0EXI4          ILC1H.0
        L1EXI4          ILC1H.1
        L0EXI5          ILC1H.2
        L1EXI5          ILC1H.3
        L0EXI6          ILC1H.4
        L1EXI6          ILC1H.5
        L0EXI7          ILC1H.6
        L1EXI7          ILC1H.7

        L0SIO0          ILC2L.0
        L1SIO0          ILC2L.1
        L0SIOF0         ILC2L.2
        L1SIOF0         ILC2L.3
        L0I2C1          ILC2L.6
        L1I2C1          ILC2L.7

        L0UA0           ILC2H.0
        L1UA0           ILC2H.1
        L0UA1           ILC2H.2
        L1UA1           ILC2H.3
        L0UAF0          ILC2H.4
        L1UAF0          ILC2H.5
        L0UAF1          ILC2H.6
        L1UAF1          ILC2H.7

        L0I2CF0         ILC3L.0
        L1I2CF0         ILC3L.1
        L0I2CF1         ILC3L.2
        L1I2CF1         ILC3L.3

        L0LOSC          ILC3H.2
        L1LOSC          ILC3H.3
        L0VLS           ILC3H.4
        L1VLS           ILC3H.5
        L0MD0           ILC3H.6
        L1MD0           ILC3H.7

        L0SAD           ILC4L.0
        L1SAD           ILC4L.1
        L0RAD           ILC4L.2
        L1RAD           ILC4L.3

        L0CMP0          ILC4H.0
        L1CMP0          ILC4H.1
        L0CMP1          ILC4H.2
        L1CMP1          ILC4H.3

        L0TM0           ILC5L.0
        L1TM0           ILC5L.1
        L0TM1           ILC5L.2
        L1TM1           ILC5L.3
        L0TM2           ILC5L.4
        L1TM2           ILC5L.5
        L0TM3           ILC5L.6
        L1TM3           ILC5L.7

        L0TM4           ILC5H.0
        L1TM4           ILC5H.1
        L0TM5           ILC5H.2
        L1TM5           ILC5H.3
        L0TM6           ILC5H.4
        L1TM6           ILC5H.5
        L0TM7           ILC5H.6
        L1TM7           ILC5H.7

        L0FTM0          ILC6L.0
        L1FTM0          ILC6L.1
        L0FTM1          ILC6L.2
        L1FTM1          ILC6L.3
        L0FTM2          ILC6L.4
        L1FTM2          ILC6L.5
        L0FTM3          ILC6L.6
        L1FTM3          ILC6L.7

        L0RTC1          ILC6H.0
        L1RTC1          ILC6H.1
        L0AL11          ILC6H.2
        L1AL11          ILC6H.3
        L0TM1K          ILC6H.6
        L1TM1K          ILC6H.7

        L0LTBC0         ILC7L.0
        L1LTBC0         ILC7L.1
        L0LTBC1         ILC7L.2
        L1LTBC1         ILC7L.3
        L0LTBC2         ILC7L.4
        L1LTBC2         ILC7L.5
        L0LCD           ILC7L.6
        L1LCD           ILC7L.7

        L0RTC2          ILC7H.0
        L1RTC2          ILC7H.1
        L0AL12          ILC7H.2
        L1AL12          ILC7H.3
        L0RTC0          ILC7H.4
        L1RTC0          ILC7H.5
        L0AL10          ILC7H.6
        L1AL10          ILC7H.7

        EXI0E0          EXICON0.0
        EXI1E0          EXICON0.1
        EXI2E0          EXICON0.2
        EXI3E0          EXICON0.3
        EXI4E0          EXICON0.4
        EXI5E0          EXICON0.5
        EXI6E0          EXICON0.6
        EXI7E0          EXICON0.7

        EXI0E1          EXICON1.0
        EXI1E1          EXICON1.1
        EXI2E1          EXICON1.2
        EXI3E1          EXICON1.3
        EXI4E1          EXICON1.4
        EXI5E1          EXICON1.5
        EXI6E1          EXICON1.6
        EXI7E1          EXICON1.7

        EXI0SM          EXICON2.0
        EXI1SM          EXICON2.1
        EXI2SM          EXICON2.2
        EXI3SM          EXICON2.3
        EXI4SM          EXICON2.4
        EXI5SM          EXICON2.5
        EXI6SM          EXICON2.6
        EXI7SM          EXICON2.7

        EXI0FL          EXICON3.0
        EXI1FL          EXICON3.1
        EXI2FL          EXICON3.2
        EXI3FL          EXICON3.3
        EXI4FL          EXICON3.4
        EXI5FL          EXICON3.5
        EXI6FL          EXICON3.6
        EXI7FL          EXICON3.7

        EXI0S0          EXI0SEL.0
        EXI0S1          EXI0SEL.1
        EXI0S2          EXI0SEL.2
        EXI0S3          EXI0SEL.3
        EXI0S4          EXI0SEL.4
        EXI0S5          EXI0SEL.5
        EXI0S6          EXI0SEL.6
        EXI0S7          EXI0SEL.7

        EXI1S0          EXI1SEL.0
        EXI1S1          EXI1SEL.1
        EXI1S2          EXI1SEL.2
        EXI1S3          EXI1SEL.3
        EXI1S4          EXI1SEL.4
        EXI1S5          EXI1SEL.5
        EXI1S6          EXI1SEL.6
        EXI1S7          EXI1SEL.7

        EXI2S0          EXI2SEL.0
        EXI2S1          EXI2SEL.1
        EXI2S2          EXI2SEL.2
        EXI2S3          EXI2SEL.3
        EXI2S4          EXI2SEL.4
        EXI2S5          EXI2SEL.5
        EXI2S6          EXI2SEL.6
        EXI2S7          EXI2SEL.7

        EXI3S0          EXI3SEL.0
        EXI3S1          EXI3SEL.1
        EXI3S2          EXI3SEL.2
        EXI3S3          EXI3SEL.3
        EXI3S4          EXI3SEL.4
        EXI3S5          EXI3SEL.5
        EXI3S6          EXI3SEL.6
        EXI3S7          EXI3SEL.7

        EXI4S0          EXI4SEL.0
        EXI4S1          EXI4SEL.1
        EXI4S2          EXI4SEL.2
        EXI4S3          EXI4SEL.3
        EXI4S4          EXI4SEL.4
        EXI4S5          EXI4SEL.5
        EXI4S6          EXI4SEL.6
        EXI4S7          EXI4SEL.7

        EXI5S0          EXI5SEL.0
        EXI5S1          EXI5SEL.1
        EXI5S2          EXI5SEL.2
        EXI5S3          EXI5SEL.3
        EXI5S4          EXI5SEL.4
        EXI5S5          EXI5SEL.5
        EXI5S6          EXI5SEL.6
        EXI5S7          EXI5SEL.7

        EXI6S0          EXI6SEL.0
        EXI6S1          EXI6SEL.1
        EXI6S2          EXI6SEL.2
        EXI6S3          EXI6SEL.3
        EXI6S4          EXI6SEL.4
        EXI6S5          EXI6SEL.5
        EXI6S6          EXI6SEL.6
        EXI6S7          EXI6SEL.7

        EXI7S0          EXI7SEL.0
        EXI7S1          EXI7SEL.1
        EXI7S2          EXI7SEL.2
        EXI7S3          EXI7SEL.3
        EXI7S4          EXI7SEL.4
        EXI7S5          EXI7SEL.5
        EXI7S6          EXI7SEL.6
        EXI7S7          EXI7SEL.7

        T128HZ          LTBR.0
        T64HZ           LTBR.1
        T32HZ           LTBR.2
        T16HZ           LTBR.3
        T8HZ            LTBR.4
        T4HZ            LTBR.5
        T2HZ            LTBR.6
        T1HZ            LTBR.7

        LADJ0           LTBADJL.0
        LADJ1           LTBADJL.1
        LADJ2           LTBADJL.2
        LADJ3           LTBADJL.3
        LADJ4           LTBADJL.4
        LADJ5           LTBADJL.5
        LADJ6           LTBADJL.6
        LADJ7           LTBADJL.7

        LADJ8           LTBADJH.0
        LADJ9           LTBADJH.1
        LADJ10          LTBADJH.2

        LTI0S0          LTBINTL.0
        LTI0S1          LTBINTL.1
        LTI0S2          LTBINTL.2
        LTI1S0          LTBINTL.4
        LTI1S1          LTBINTL.5
        LTI1S2          LTBINTL.6

        LTI2S0          LTBINTH.0
        LTI2S1          LTBINTH.1
        LTI2S2          LTBINTH.2

        UDHEN           PMCON.0
        UDHON           PMCON.1
        LXTHVN          PMCON.2

        DTM0            BLKCON0.0
        DTM1            BLKCON0.1
        DTM2            BLKCON0.2
        DTM3            BLKCON0.3
        DTM4            BLKCON0.4
        DTM5            BLKCON0.5
        DTM6            BLKCON0.6
        DTM7            BLKCON0.7

        DFTM0           BLKCON1.0
        DFTM1           BLKCON1.1
        DFTM2           BLKCON1.2
        DFTM3           BLKCON1.3
        DTM1K           BLKCON1.7

        DSIO0           BLKCON2.0
        DSIOF0          BLKCON2.1
        DUA0            BLKCON2.2
        DUA1            BLKCON2.3
        DUAF0           BLKCON2.4
        DUAF1           BLKCON2.5
        DI2CF0          BLKCON2.6
        DI2CF1          BLKCON2.7

        DMD0            BLKCON3.0
        DI2C1           BLKCON3.5
        DCMP0           BLKCON3.6
        DCMP1           BLKCON3.7

        DSAD            BLKCON4.0
        DRAD            BLKCON4.1
        DLCD            BLKCON4.6

        DRTC0           BLKCON5.0
        DVLS            BLKCON5.1
        DLLD            BLKCON5.2
        DRTC1           BLKCON5.6
        DRTC2           BLKCON5.7

        T1KC0           T1KCRL.0
        T1KC1           T1KCRL.1
        T1KC2           T1KCRL.2
        T1KC3           T1KCRL.3
        T1KC4           T1KCRL.4
        T1KC5           T1KCRL.5
        T1KC6           T1KCRL.6
        T1KC7           T1KCRL.7

        T1KC8           T1KCRH.0
        T1KC9           T1KCRH.1
        T1KC10          T1KCRH.2
        T1KC11          T1KCRH.3
        T1KC12          T1KCRH.4

        T1KRUN          T1KCON.0
        T1KSEL0         T1KCON.1
        T1KSEL1         T1KCON.2
        T1KSEL2         T1KCON.3

        FA0             FLASHAL.0
        FA1             FLASHAL.1
        FA2             FLASHAL.2
        FA3             FLASHAL.3
        FA4             FLASHAL.4
        FA5             FLASHAL.5
        FA6             FLASHAL.6
        FA7             FLASHAL.7

        FA8             FLASHAH.0
        FA9             FLASHAH.1
        FA10            FLASHAH.2
        FA11            FLASHAH.3
        FA12            FLASHAH.4
        FA13            FLASHAH.5
        FA14            FLASHAH.6
        FA15            FLASHAH.7

        FD0             FLASHDL.0
        FD1             FLASHDL.1
        FD2             FLASHDL.2
        FD3             FLASHDL.3
        FD4             FLASHDL.4
        FD5             FLASHDL.5
        FD6             FLASHDL.6
        FD7             FLASHDL.7

        FD8             FLASHDH.0
        FD9             FLASHDH.1
        FD10            FLASHDH.2
        FD11            FLASHDH.3
        FD12            FLASHDH.4
        FD13            FLASHDH.5
        FD14            FLASHDH.6
        FD15            FLASHDH.7

        FERS            FLASHCON.0
        FSERS           FLASHCON.1

        FSEG0           FLASHSEG.0
        FSEG1           FLASHSEG.1
        FSEG2           FLASHSEG.2

        FSELF           FLASHSLF.0

        REA12           REMAPADD.0
        REA13           REMAPADD.1
        REA14           REMAPADD.2
        REA15           REMAPADD.3
        RES0            REMAPADD.4
        RES1            REMAPADD.5
        RES2            REMAPADD.6
        RBTA            REMAPADD.7

        TST0PD          TST0PDCT.0

        BSON            BIASCON.0
        BSN0            BIASCON.1
        BSN1            BIASCON.2
        BSN2            BIASCON.3
        BSEL0           BIASCON.4
        BSEL1           BIASCON.5
        VLCD            BIASCON.6
        SELX2           BIASCON.7

        LCN0            DSPCNT.0
        LCN1            DSPCNT.1
        LCN2            DSPCNT.2
        LCN3            DSPCNT.3
        LCN4            DSPCNT.4

        DUTY0           DSPMOD0.0
        DUTY1           DSPMOD0.1
        DUTY2           DSPMOD0.2
        DUTY3           DSPMOD0.3
        DUTY4           DSPMOD0.4

        LMD0            DSPCON0.0
        LMD1            DSPCON0.1

        SDR             DSPCON1.0
        CDR             DSPCON1.2
        REV             DSPCON1.4

        LCL0            DSPCON2.0
        LCL1            DSPCON2.1
        LCL2            DSPCON2.2
        LCL3            DSPCON2.3
        LCL4            DSPCON2.4

        INV             DSPCON3.0

        ZAD0            DSPOFST.0
        ZAD1            DSPOFST.1
        ZAD2            DSPOFST.2
        ZAD3            DSPOFST.3
        ZAD4            DSPOFST.4

        DSPSLA          DSPBUF.0

        DCL0            DSPCLK.0
        DCL1            DSPCLK.1
        DCL2            DSPCLK.2
        DCL3            DSPCLK.3
        DCL4            DSPCLK.4
        DCL5            DSPCLK.5
        DCL6            DSPCLK.6

        FRMIEN          LCDISET.0

        FRMIST          LCDISTAT.0

        P00D            P0D.0
        P01D            P0D.1
        P02D            P0D.2
        P03D            P0D.3
        P04D            P0D.4
        P05D            P0D.5

        P00DIR          P0DIR.0
        P01DIR          P0DIR.1
        P02DIR          P0DIR.2
        P03DIR          P0DIR.3
        P04DIR          P0DIR.4
        P05DIR          P0DIR.5

        P00C0           P0CON0.0
        P01C0           P0CON0.1
        P02C0           P0CON0.2
        P03C0           P0CON0.3
        P04C0           P0CON0.4
        P05C0           P0CON0.5

        P00C1           P0CON1.0
        P01C1           P0CON1.1
        P02C1           P0CON1.2
        P03C1           P0CON1.3
        P04C1           P0CON1.4
        P05C1           P0CON1.5

        P00MD0          P0MOD0.0
        P01MD0          P0MOD0.1
        P02MD0          P0MOD0.2
        P03MD0          P0MOD0.3
        P04MD0          P0MOD0.4
        P05MD0          P0MOD0.5

        P00MD1          P0MOD1.0
        P01MD1          P0MOD1.1
        P02MD1          P0MOD1.2
        P03MD1          P0MOD1.3
        P04MD1          P0MOD1.4
        P05MD1          P0MOD1.5

        P20D            P2D.0
        P21D            P2D.1
        P22D            P2D.2
        P23D            P2D.3

        P20DIR          P2DIR.0
        P21DIR          P2DIR.1
        P22DIR          P2DIR.2
        P23DIR          P2DIR.3

        P20C0           P2CON0.0
        P21C0           P2CON0.1
        P22C0           P2CON0.2
        P23C0           P2CON0.3

        P20C1           P2CON1.0
        P21C1           P2CON1.1
        P22C1           P2CON1.2
        P23C1           P2CON1.3

        P20MD0          P2MOD0.0
        P21MD0          P2MOD0.1
        P22MD0          P2MOD0.2
        P23MD0          P2MOD0.3

        P20MD1          P2MOD1.0
        P21MD1          P2MOD1.1
        P22MD1          P2MOD1.2
        P23MD1          P2MOD1.3

        P30D            P3D.0
        P31D            P3D.1
        P32D            P3D.2
        P33D            P3D.3
        P34D            P3D.4
        P35D            P3D.5
        P36D            P3D.6
        P37D            P3D.7

        P30DIR          P3DIR.0
        P31DIR          P3DIR.1
        P32DIR          P3DIR.2
        P33DIR          P3DIR.3
        P34DIR          P3DIR.4
        P35DIR          P3DIR.5
        P36DIR          P3DIR.6
        P37DIR          P3DIR.7

        P30C0           P3CON0.0
        P31C0           P3CON0.1
        P32C0           P3CON0.2
        P33C0           P3CON0.3
        P34C0           P3CON0.4
        P35C0           P3CON0.5
        P36C0           P3CON0.6
        P37C0           P3CON0.7

        P30C1           P3CON1.0
        P31C1           P3CON1.1
        P32C1           P3CON1.2
        P33C1           P3CON1.3
        P34C1           P3CON1.4
        P35C1           P3CON1.5
        P36C1           P3CON1.6
        P37C1           P3CON1.7

        P30MD0          P3MOD0.0
        P31MD0          P3MOD0.1
        P32MD0          P3MOD0.2
        P33MD0          P3MOD0.3
        P34MD0          P3MOD0.4
        P35MD0          P3MOD0.5
        P36MD0          P3MOD0.6
        P37MD0          P3MOD0.7

        P30MD1          P3MOD1.0
        P31MD1          P3MOD1.1
        P32MD1          P3MOD1.2
        P33MD1          P3MOD1.3
        P34MD1          P3MOD1.4
        P35MD1          P3MOD1.5
        P36MD1          P3MOD1.6
        P37MD1          P3MOD1.7

        P30MD2          P3MOD2.0
        P31MD2          P3MOD2.1
        P32MD2          P3MOD2.2
        P33MD2          P3MOD2.3
        P34MD2          P3MOD2.4
        P35MD2          P3MOD2.5
        P36MD2          P3MOD2.6
        P37MD2          P3MOD2.7

        P40D            P4D.0
        P41D            P4D.1
        P42D            P4D.2
        P43D            P4D.3
        P44D            P4D.4
        P45D            P4D.5
        P46D            P4D.6
        P47D            P4D.7

        P40DIR          P4DIR.0
        P41DIR          P4DIR.1
        P42DIR          P4DIR.2
        P43DIR          P4DIR.3
        P44DIR          P4DIR.4
        P45DIR          P4DIR.5
        P46DIR          P4DIR.6
        P47DIR          P4DIR.7

        P40C0           P4CON0.0
        P41C0           P4CON0.1
        P42C0           P4CON0.2
        P43C0           P4CON0.3
        P44C0           P4CON0.4
        P45C0           P4CON0.5
        P46C0           P4CON0.6
        P47C0           P4CON0.7

        P40C1           P4CON1.0
        P41C1           P4CON1.1
        P42C1           P4CON1.2
        P43C1           P4CON1.3
        P44C1           P4CON1.4
        P45C1           P4CON1.5
        P46C1           P4CON1.6
        P47C1           P4CON1.7

        P40MD0          P4MOD0.0
        P41MD0          P4MOD0.1
        P42MD0          P4MOD0.2
        P43MD0          P4MOD0.3
        P44MD0          P4MOD0.4
        P45MD0          P4MOD0.5
        P46MD0          P4MOD0.6
        P47MD0          P4MOD0.7

        P40MD1          P4MOD1.0
        P41MD1          P4MOD1.1
        P42MD1          P4MOD1.2
        P43MD1          P4MOD1.3
        P44MD1          P4MOD1.4
        P45MD1          P4MOD1.5
        P46MD1          P4MOD1.6
        P47MD1          P4MOD1.7

        P50D            P5D.0
        P51D            P5D.1
        P52D            P5D.2
        P53D            P5D.3
        P54D            P5D.4
        P55D            P5D.5
        P56D            P5D.6
        P57D            P5D.7

        P50DIR          P5DIR.0
        P51DIR          P5DIR.1
        P52DIR          P5DIR.2
        P53DIR          P5DIR.3
        P54DIR          P5DIR.4
        P55DIR          P5DIR.5
        P56DIR          P5DIR.6
        P57DIR          P5DIR.7

        P50C0           P5CON0.0
        P51C0           P5CON0.1
        P52C0           P5CON0.2
        P53C0           P5CON0.3
        P54C0           P5CON0.4
        P55C0           P5CON0.5
        P56C0           P5CON0.6
        P57C0           P5CON0.7

        P50C1           P5CON1.0
        P51C1           P5CON1.1
        P52C1           P5CON1.2
        P53C1           P5CON1.3
        P54C1           P5CON1.4
        P55C1           P5CON1.5
        P56C1           P5CON1.6
        P57C1           P5CON1.7

        P50MD0          P5MOD0.0
        P51MD0          P5MOD0.1
        P52MD0          P5MOD0.2
        P53MD0          P5MOD0.3
        P54MD0          P5MOD0.4
        P55MD0          P5MOD0.5
        P56MD0          P5MOD0.6
        P57MD0          P5MOD0.7

        P50MD1          P5MOD1.0
        P51MD1          P5MOD1.1
        P52MD1          P5MOD1.2
        P53MD1          P5MOD1.3
        P54MD1          P5MOD1.4
        P55MD1          P5MOD1.5
        P56MD1          P5MOD1.6
        P57MD1          P5MOD1.7

        P50MD2          P5MOD2.0
        P51MD2          P5MOD2.1
        P52MD2          P5MOD2.2
        P53MD2          P5MOD2.3
        P54MD2          P5MOD2.4
        P55MD2          P5MOD2.5
        P56MD2          P5MOD2.6
        P57MD2          P5MOD2.7

        P60D            P6D.0
        P61D            P6D.1

        P60DIR          P6DIR.0
        P61DIR          P6DIR.1

        P60C0           P6CON0.0
        P61C0           P6CON0.1

        P60C1           P6CON1.0
        P61C1           P6CON1.1

        P60MD0          P6MOD0.0
        P61MD0          P6MOD0.1

        P60MD1          P6MOD1.0
        P61MD1          P6MOD1.1

        P70D            P7D.0
        P71D            P7D.1
        P72D            P7D.2
        P73D            P7D.3
        P74D            P7D.4
        P75D            P7D.5
        P76D            P7D.6
        P77D            P7D.7

        P70DIR          P7DIR.0
        P71DIR          P7DIR.1
        P72DIR          P7DIR.2
        P73DIR          P7DIR.3
        P74DIR          P7DIR.4
        P75DIR          P7DIR.5
        P76DIR          P7DIR.6
        P77DIR          P7DIR.7

        P70C0           P7CON0.0
        P71C0           P7CON0.1
        P72C0           P7CON0.2
        P73C0           P7CON0.3
        P74C0           P7CON0.4
        P75C0           P7CON0.5
        P76C0           P7CON0.6
        P77C0           P7CON0.7

        P70C1           P7CON1.0
        P71C1           P7CON1.1
        P72C1           P7CON1.2
        P73C1           P7CON1.3
        P74C1           P7CON1.4
        P75C1           P7CON1.5
        P76C1           P7CON1.6
        P77C1           P7CON1.7

        P70MD0          P7MOD0.0
        P71MD0          P7MOD0.1
        P72MD0          P7MOD0.2
        P73MD0          P7MOD0.3
        P74MD0          P7MOD0.4
        P75MD0          P7MOD0.5
        P76MD0          P7MOD0.6
        P77MD0          P7MOD0.7

        P80D            P8D.0
        P81D            P8D.1
        P82D            P8D.2
        P83D            P8D.3
        P84D            P8D.4
        P85D            P8D.5
        P86D            P8D.6
        P87D            P8D.7

        P80DIR          P8DIR.0
        P81DIR          P8DIR.1
        P82DIR          P8DIR.2
        P83DIR          P8DIR.3
        P84DIR          P8DIR.4
        P85DIR          P8DIR.5
        P86DIR          P8DIR.6
        P87DIR          P8DIR.7

        P80C0           P8CON0.0
        P81C0           P8CON0.1
        P82C0           P8CON0.2
        P83C0           P8CON0.3
        P84C0           P8CON0.4
        P85C0           P8CON0.5
        P86C0           P8CON0.6
        P87C0           P8CON0.7

        P80C1           P8CON1.0
        P81C1           P8CON1.1
        P82C1           P8CON1.2
        P83C1           P8CON1.3
        P84C1           P8CON1.4
        P85C1           P8CON1.5
        P86C1           P8CON1.6
        P87C1           P8CON1.7

        P80MD0          P8MOD0.0
        P81MD0          P8MOD0.1
        P82MD0          P8MOD0.2
        P83MD0          P8MOD0.3
        P84MD0          P8MOD0.4
        P85MD0          P8MOD0.5
        P86MD0          P8MOD0.6
        P87MD0          P8MOD0.7

        T0D0            TM0D.0
        T0D1            TM0D.1
        T0D2            TM0D.2
        T0D3            TM0D.3
        T0D4            TM0D.4
        T0D5            TM0D.5
        T0D6            TM0D.6
        T0D7            TM0D.7

        T1D0            TM1D.0
        T1D1            TM1D.1
        T1D2            TM1D.2
        T1D3            TM1D.3
        T1D4            TM1D.4
        T1D5            TM1D.5
        T1D6            TM1D.6
        T1D7            TM1D.7

        T2D0            TM2D.0
        T2D1            TM2D.1
        T2D2            TM2D.2
        T2D3            TM2D.3
        T2D4            TM2D.4
        T2D5            TM2D.5
        T2D6            TM2D.6
        T2D7            TM2D.7

        T3D0            TM3D.0
        T3D1            TM3D.1
        T3D2            TM3D.2
        T3D3            TM3D.3
        T3D4            TM3D.4
        T3D5            TM3D.5
        T3D6            TM3D.6
        T3D7            TM3D.7

        T4D0            TM4D.0
        T4D1            TM4D.1
        T4D2            TM4D.2
        T4D3            TM4D.3
        T4D4            TM4D.4
        T4D5            TM4D.5
        T4D6            TM4D.6
        T4D7            TM4D.7

        T5D0            TM5D.0
        T5D1            TM5D.1
        T5D2            TM5D.2
        T5D3            TM5D.3
        T5D4            TM5D.4
        T5D5            TM5D.5
        T5D6            TM5D.6
        T5D7            TM5D.7

        T6D0            TM6D.0
        T6D1            TM6D.1
        T6D2            TM6D.2
        T6D3            TM6D.3
        T6D4            TM6D.4
        T6D5            TM6D.5
        T6D6            TM6D.6
        T6D7            TM6D.7

        T7D0            TM7D.0
        T7D1            TM7D.1
        T7D2            TM7D.2
        T7D3            TM7D.3
        T7D4            TM7D.4
        T7D5            TM7D.5
        T7D6            TM7D.6
        T7D7            TM7D.7

        T0C0            TM0C.0
        T0C1            TM0C.1
        T0C2            TM0C.2
        T0C3            TM0C.3
        T0C4            TM0C.4
        T0C5            TM0C.5
        T0C6            TM0C.6
        T0C7            TM0C.7

        T1C0            TM1C.0
        T1C1            TM1C.1
        T1C2            TM1C.2
        T1C3            TM1C.3
        T1C4            TM1C.4
        T1C5            TM1C.5
        T1C6            TM1C.6
        T1C7            TM1C.7

        T2C0            TM2C.0
        T2C1            TM2C.1
        T2C2            TM2C.2
        T2C3            TM2C.3
        T2C4            TM2C.4
        T2C5            TM2C.5
        T2C6            TM2C.6
        T2C7            TM2C.7

        T3C0            TM3C.0
        T3C1            TM3C.1
        T3C2            TM3C.2
        T3C3            TM3C.3
        T3C4            TM3C.4
        T3C5            TM3C.5
        T3C6            TM3C.6
        T3C7            TM3C.7

        T4C0            TM4C.0
        T4C1            TM4C.1
        T4C2            TM4C.2
        T4C3            TM4C.3
        T4C4            TM4C.4
        T4C5            TM4C.5
        T4C6            TM4C.6
        T4C7            TM4C.7

        T5C0            TM5C.0
        T5C1            TM5C.1
        T5C2            TM5C.2
        T5C3            TM5C.3
        T5C4            TM5C.4
        T5C5            TM5C.5
        T5C6            TM5C.6
        T5C7            TM5C.7

        T6C0            TM6C.0
        T6C1            TM6C.1
        T6C2            TM6C.2
        T6C3            TM6C.3
        T6C4            TM6C.4
        T6C5            TM6C.5
        T6C6            TM6C.6
        T6C7            TM6C.7

        T7C0            TM7C.0
        T7C1            TM7C.1
        T7C2            TM7C.2
        T7C3            TM7C.3
        T7C4            TM7C.4
        T7C5            TM7C.5
        T7C6            TM7C.6
        T7C7            TM7C.7

        T0CS0           TM0CON.0
        T0DIV0          TM0CON.3
        T0DIV1          TM0CON.4
        T0DIV2          TM0CON.5
        T01M16          TM0CON.6
        T0OST           TM0CON.7

        T1CS0           TM1CON.0
        T1DIV0          TM1CON.3
        T1DIV1          TM1CON.4
        T1DIV2          TM1CON.5
        T1OST           TM1CON.7

        T2CS0           TM2CON.0
        T2CS1           TM2CON.1
        T2DIV0          TM2CON.3
        T2DIV1          TM2CON.4
        T2DIV2          TM2CON.5
        T23M16          TM2CON.6
        T2OST           TM2CON.7

        T3CS0           TM3CON.0
        T3CS1           TM3CON.1
        T3DIV0          TM3CON.3
        T3DIV1          TM3CON.4
        T3DIV2          TM3CON.5
        T3OST           TM3CON.7

        T4CS0           TM4CON.0
        T4CS1           TM4CON.1
        T4DIV0          TM4CON.3
        T4DIV1          TM4CON.4
        T4DIV2          TM4CON.5
        T45M16          TM4CON.6
        T4OST           TM4CON.7

        T5CS0           TM5CON.0
        T5CS1           TM5CON.1
        T5DIV0          TM5CON.3
        T5DIV1          TM5CON.4
        T5DIV2          TM5CON.5
        T5OST           TM5CON.7

        T6CS0           TM6CON.0
        T6CS1           TM6CON.1
        T6DIV0          TM6CON.3
        T6DIV1          TM6CON.4
        T6DIV2          TM6CON.5
        T67M16          TM6CON.6
        T6OST           TM6CON.7

        T7CS0           TM7CON.0
        T7CS1           TM7CON.1
        T7DIV0          TM7CON.3
        T7DIV1          TM7CON.4
        T7DIV2          TM7CON.5
        T7OST           TM7CON.7

        T0RUN           TMSTR0.0
        T1RUN           TMSTR0.1
        T2RUN           TMSTR0.2
        T3RUN           TMSTR0.3
        T4RUN           TMSTR0.4
        T5RUN           TMSTR0.5
        T6RUN           TMSTR0.6
        T7RUN           TMSTR0.7

        T0STP           TMSTP0.0
        T1STP           TMSTP0.1
        T2STP           TMSTP0.2
        T3STP           TMSTP0.3
        T4STP           TMSTP0.4
        T5STP           TMSTP0.5
        T6STP           TMSTP0.6
        T7STP           TMSTP0.7

        T0STAT          TMSTAT0.0
        T1STAT          TMSTAT0.1
        T2STAT          TMSTAT0.2
        T3STAT          TMSTAT0.3
        T4STAT          TMSTAT0.4
        T5STAT          TMSTAT0.5
        T6STAT          TMSTAT0.6
        T7STAT          TMSTAT0.7

        R0S0            RTC0SEC.0
        R0S1            RTC0SEC.1
        R0S2            RTC0SEC.2
        R0S3            RTC0SEC.3
        R0S4            RTC0SEC.4
        R0S5            RTC0SEC.5
        R0R6            RTC0SEC.6

        R0M0            RTC0MIN.0
        R0M1            RTC0MIN.1
        R0M2            RTC0MIN.2
        R0M3            RTC0MIN.3
        R0M4            RTC0MIN.4
        R0M5            RTC0MIN.5
        R0M6            RTC0MIN.6

        R0H0            RTC0HOUR.0
        R0H1            RTC0HOUR.1
        R0H2            RTC0HOUR.2
        R0H3            RTC0HOUR.3
        R0H4            RTC0HOUR.4
        R0H5            RTC0HOUR.5

        R0W0            RTC0WEEK.0
        R0W1            RTC0WEEK.1
        R0W2            RTC0WEEK.2

        R0D0            RTC0DAY.0
        R0D1            RTC0DAY.1
        R0D2            RTC0DAY.2
        R0D3            RTC0DAY.3
        R0D4            RTC0DAY.4
        R0D5            RTC0DAY.5

        R0MO0           RTC0MON.0
        R0MO1           RTC0MON.1
        R0MO2           RTC0MON.2
        R0MO3           RTC0MON.3
        R0MO4           RTC0MON.4

        R0Y0            RTC0YEAR.0
        R0Y1            RTC0YEAR.1
        R0Y2            RTC0YEAR.2
        R0Y3            RTC0YEAR.3
        R0Y4            RTC0YEAR.4
        R0Y5            RTC0YEAR.5
        R0Y6            RTC0YEAR.6
        R0Y7            RTC0YEAR.7

        RTC0EN          RTC0CON.0
        R0IN0           RTC0CON.1
        R0IN1           RTC0CON.2

        AL10M0          AL10MIN.0
        AL10M1          AL10MIN.1
        AL10M2          AL10MIN.2
        AL10M3          AL10MIN.3
        AL10M4          AL10MIN.4
        AL10M5          AL10MIN.5
        AL10M6          AL10MIN.6

        AL10H0          AL10HOUR.0
        AL10H1          AL10HOUR.1
        AL10H2          AL10HOUR.2
        AL10H3          AL10HOUR.3
        AL10H4          AL10HOUR.4
        AL10H5          AL10HOUR.5

        AL10D0          AL10DAY.0
        AL10D1          AL10DAY.1
        AL10D2          AL10DAY.2
        AL10D3          AL10DAY.3
        AL10D4          AL10DAY.4
        AL10D5          AL10DAY.5

        AL10MO0         AL10MON.0
        AL10MO1         AL10MON.1
        AL10MO2         AL10MON.2
        AL10MO3         AL10MON.3
        AL10MO4         AL10MON.4

        R1S0            RTC1SEC.0
        R1S1            RTC1SEC.1
        R1S2            RTC1SEC.2
        R1S3            RTC1SEC.3
        R1S4            RTC1SEC.4
        R1S5            RTC1SEC.5
        R1R6            RTC1SEC.6

        R1M0            RTC1MIN.0
        R1M1            RTC1MIN.1
        R1M2            RTC1MIN.2
        R1M3            RTC1MIN.3
        R1M4            RTC1MIN.4
        R1M5            RTC1MIN.5
        R1M6            RTC1MIN.6

        R1H0            RTC1HOUR.0
        R1H1            RTC1HOUR.1
        R1H2            RTC1HOUR.2
        R1H3            RTC1HOUR.3
        R1H4            RTC1HOUR.4
        R1H5            RTC1HOUR.5

        R1W0            RTC1WEEK.0
        R1W1            RTC1WEEK.1
        R1W2            RTC1WEEK.2

        R1D0            RTC1DAY.0
        R1D1            RTC1DAY.1
        R1D2            RTC1DAY.2
        R1D3            RTC1DAY.3
        R1D4            RTC1DAY.4
        R1D5            RTC1DAY.5

        R1MO0           RTC1MON.0
        R1MO1           RTC1MON.1
        R1MO2           RTC1MON.2
        R1MO3           RTC1MON.3
        R1MO4           RTC1MON.4

        R1Y0            RTC1YEAR.0
        R1Y1            RTC1YEAR.1
        R1Y2            RTC1YEAR.2
        R1Y3            RTC1YEAR.3
        R1Y4            RTC1YEAR.4
        R1Y5            RTC1YEAR.5
        R1Y6            RTC1YEAR.6
        R1Y7            RTC1YEAR.7

        RTC1EN          RTC1CON.0
        R1IN0           RTC1CON.1
        R1IN1           RTC1CON.2

        AL11M0          AL11MIN.0
        AL11M1          AL11MIN.1
        AL11M2          AL11MIN.2
        AL11M3          AL11MIN.3
        AL11M4          AL11MIN.4
        AL11M5          AL11MIN.5
        AL11M6          AL11MIN.6

        AL11H0          AL11HOUR.0
        AL11H1          AL11HOUR.1
        AL11H2          AL11HOUR.2
        AL11H3          AL11HOUR.3
        AL11H4          AL11HOUR.4
        AL11H5          AL11HOUR.5

        AL11D0          AL11DAY.0
        AL11D1          AL11DAY.1
        AL11D2          AL11DAY.2
        AL11D3          AL11DAY.3
        AL11D4          AL11DAY.4
        AL11D5          AL11DAY.5

        AL11MO0         AL11MON.0
        AL11MO1         AL11MON.1
        AL11MO2         AL11MON.2
        AL11MO3         AL11MON.3
        AL11MO4         AL11MON.4

        R2S0            RTC2SEC.0
        R2S1            RTC2SEC.1
        R2S2            RTC2SEC.2
        R2S3            RTC2SEC.3
        R2S4            RTC2SEC.4
        R2S5            RTC2SEC.5
        R2R6            RTC2SEC.6

        R2M0            RTC2MIN.0
        R2M1            RTC2MIN.1
        R2M2            RTC2MIN.2
        R2M3            RTC2MIN.3
        R2M4            RTC2MIN.4
        R2M5            RTC2MIN.5
        R2M6            RTC2MIN.6

        R2H0            RTC2HOUR.0
        R2H1            RTC2HOUR.1
        R2H2            RTC2HOUR.2
        R2H3            RTC2HOUR.3
        R2H4            RTC2HOUR.4
        R2H5            RTC2HOUR.5

        R2W0            RTC2WEEK.0
        R2W1            RTC2WEEK.1
        R2W2            RTC2WEEK.2

        R2D0            RTC2DAY.0
        R2D1            RTC2DAY.1
        R2D2            RTC2DAY.2
        R2D3            RTC2DAY.3
        R2D4            RTC2DAY.4
        R2D5            RTC2DAY.5

        R2MO0           RTC2MON.0
        R2MO1           RTC2MON.1
        R2MO2           RTC2MON.2
        R2MO3           RTC2MON.3
        R2MO4           RTC2MON.4

        R2Y0            RTC2YEAR.0
        R2Y1            RTC2YEAR.1
        R2Y2            RTC2YEAR.2
        R2Y3            RTC2YEAR.3
        R2Y4            RTC2YEAR.4
        R2Y5            RTC2YEAR.5
        R2Y6            RTC2YEAR.6
        R2Y7            RTC2YEAR.7

        RTC2EN          RTC2CON.0
        R2IN1           RTC2CON.1
        R2IN2           RTC2CON.2

        AL12M0          AL12MIN.0
        AL12M1          AL12MIN.1
        AL12M2          AL12MIN.2
        AL12M3          AL12MIN.3
        AL12M4          AL12MIN.4
        AL12M5          AL12MIN.5
        AL12M6          AL12MIN.6

        AL12H0          AL12HOUR.0
        AL12H1          AL12HOUR.1
        AL12H2          AL12HOUR.2
        AL12H3          AL12HOUR.3
        AL12H4          AL12HOUR.4
        AL12H5          AL12HOUR.5

        AL12D0          AL12DAY.0
        AL12D1          AL12DAY.1
        AL12D2          AL12DAY.2
        AL12D3          AL12DAY.3
        AL12D4          AL12DAY.4
        AL12D5          AL12DAY.5

        AL12MO0         AL12MON.0
        AL12MO1         AL12MON.1
        AL12MO2         AL12MON.2
        AL12MO3         AL12MON.3
        AL12MO4         AL12MON.4

        FT0P0           0F400H.0
        FT0P1           0F400H.1
        FT0P2           0F400H.2
        FT0P3           0F400H.3
        FT0P4           0F400H.4
        FT0P5           0F400H.5
        FT0P6           0F400H.6
        FT0P7           0F400H.7

        FT0P8           0F401H.0
        FT0P9           0F401H.1
        FT0P10          0F401H.2
        FT0P11          0F401H.3
        FT0P12          0F401H.4
        FT0P13          0F401H.5
        FT0P14          0F401H.6
        FT0P15          0F401H.7

        FT0EA0          0F402H.0
        FT0EA1          0F402H.1
        FT0EA2          0F402H.2
        FT0EA3          0F402H.3
        FT0EA4          0F402H.4
        FT0EA5          0F402H.5
        FT0EA6          0F402H.6
        FT0EA7          0F402H.7

        FT0EA8          0F403H.0
        FT0EA9          0F403H.1
        FT0EA10         0F403H.2
        FT0EA11         0F403H.3
        FT0EA12         0F403H.4
        FT0EA13         0F403H.5
        FT0EA14         0F403H.6
        FT0EA15         0F403H.7

        FT0EB0          0F404H.0
        FT0EB1          0F404H.1
        FT0EB2          0F404H.2
        FT0EB3          0F404H.3
        FT0EB4          0F404H.4
        FT0EB5          0F404H.5
        FT0EB6          0F404H.6
        FT0EB7          0F404H.7

        FT0EB8          0F405H.0
        FT0EB9          0F405H.1
        FT0EB10         0F405H.2
        FT0EB11         0F405H.3
        FT0EB12         0F405H.4
        FT0EB13         0F405H.5
        FT0EB14         0F405H.6
        FT0EB15         0F405H.7

        FT0DT0          0F406H.0
        FT0DT1          0F406H.1
        FT0DT2          0F406H.2
        FT0DT3          0F406H.3
        FT0DT4          0F406H.4
        FT0DT5          0F406H.5
        FT0DT6          0F406H.6
        FT0DT7          0F406H.7

        FT0DT8          0F407H.0
        FT0DT9          0F407H.1
        FT0DT10         0F407H.2
        FT0DT11         0F407H.3
        FT0DT12         0F407H.4
        FT0DT13         0F407H.5
        FT0DT14         0F407H.6
        FT0DT15         0F407H.7

        FT0C0           0F408H.0
        FT0C1           0F408H.1
        FT0C2           0F408H.2
        FT0C3           0F408H.3
        FT0C4           0F408H.4
        FT0C5           0F408H.5
        FT0C6           0F408H.6
        FT0C7           0F408H.7

        FT0C8           0F409H.0
        FT0C9           0F409H.1
        FT0C10          0F409H.2
        FT0C11          0F409H.3
        FT0C12          0F409H.4
        FT0C13          0F409H.5
        FT0C14          0F409H.6
        FT0C15          0F409H.7

        FT0RUN          FT0CON0.0
        FT0TGEN         FT0CON0.1
        FT0EMGEN        FT0CON0.3
        FT0SDN          FT0CON0.5

        FT0UD           FT0CON1.0
        FT0FLGA         FT0CON1.4
        FT0FLGB         FT0CON1.5
        FT0FLGC         FT0CON1.6
        FT0STAT         FT0CON1.7

        FT0MD0          FT0MODL.0
        FT0MD1          FT0MODL.1
        FT0DTEN         FT0MODL.6
        FT0OST          FT0MODL.7

        FT0STPO         FT0MODH.0

        FT0CK0          FT0CLKL.0
        FT0CK1          FT0CLKL.1
        FT0CKD0         FT0CLKL.4
        FT0CKD1         FT0CLKL.5
        FT0CKD2         FT0CLKL.6

        FT0XCK0         FT0CLKH.0
        FT0XCK1         FT0CLKH.1
        FT0XCK2         FT0CLKH.2

        FT0ST0          FT0TRG0L.0
        FT0ST1          FT0TRG0L.1
        FT0EXCL         FT0TRG0L.2
        FT0CST          FT0TRG0L.3

        FT0STS0         FT0TRG0H.0
        FT0STS1         FT0TRG0H.1
        FT0STS2         FT0TRG0H.2
        FT0STS3         FT0TRG0H.3
        FT0STSS         FT0TRG0H.7

        FT0TRM0         FT0TRG1L.0
        FT0TRM1         FT0TRG1L.1
        FT0EST0         FT0TRG1L.4
        FT0EST1         FT0TRG1L.5

        FT0IEP          FT0INTEL.0
        FT0IEA          FT0INTEL.1
        FT0IEB          FT0INTEL.2
        FT0IETS         FT0INTEL.3
        FT0IETR         FT0INTEL.4

        FT0IOP          FT0INTEH.0
        FT0IOA          FT0INTEH.1
        FT0IOB          FT0INTEH.2

        FT0ISP          FT0INTSL.0
        FT0ISA          FT0INTSL.1
        FT0ISB          FT0INTSL.2
        FT0ISTS         FT0INTSL.3
        FT0ISTR         FT0INTSL.4
        FT0ISES         FT0INTSL.5

        FT0ICP          FT0INTCL.0
        FT0ICA          FT0INTCL.1
        FT0ICB          FT0INTCL.2
        FT0ICTS         FT0INTCL.3
        FT0ICTR         FT0INTCL.4
        FT0ICES         FT0INTCL.5

        FT0IR           FT0INTCH.7

        FT1P0           0F420H.0
        FT1P1           0F420H.1
        FT1P2           0F420H.2
        FT1P3           0F420H.3
        FT1P4           0F420H.4
        FT1P5           0F420H.5
        FT1P6           0F420H.6
        FT1P7           0F420H.7

        FT1P8           0F421H.0
        FT1P9           0F421H.1
        FT1P10          0F421H.2
        FT1P11          0F421H.3
        FT1P12          0F421H.4
        FT1P13          0F421H.5
        FT1P14          0F421H.6
        FT1P15          0F421H.7

        FT1EA0          0F422H.0
        FT1EA1          0F422H.1
        FT1EA2          0F422H.2
        FT1EA3          0F422H.3
        FT1EA4          0F422H.4
        FT1EA5          0F422H.5
        FT1EA6          0F422H.6
        FT1EA7          0F422H.7

        FT1EA8          0F423H.0
        FT1EA9          0F423H.1
        FT1EA10         0F423H.2
        FT1EA11         0F423H.3
        FT1EA12         0F423H.4
        FT1EA13         0F423H.5
        FT1EA14         0F423H.6
        FT1EA15         0F423H.7

        FT1EB0          0F424H.0
        FT1EB1          0F424H.1
        FT1EB2          0F424H.2
        FT1EB3          0F424H.3
        FT1EB4          0F424H.4
        FT1EB5          0F424H.5
        FT1EB6          0F424H.6
        FT1EB7          0F424H.7

        FT1EB8          0F425H.0
        FT1EB9          0F425H.1
        FT1EB10         0F425H.2
        FT1EB11         0F425H.3
        FT1EB12         0F425H.4
        FT1EB13         0F425H.5
        FT1EB14         0F425H.6
        FT1EB15         0F425H.7

        FT1DT0          0F426H.0
        FT1DT1          0F426H.1
        FT1DT2          0F426H.2
        FT1DT3          0F426H.3
        FT1DT4          0F426H.4
        FT1DT5          0F426H.5
        FT1DT6          0F426H.6
        FT1DT7          0F426H.7

        FT1DT8          0F427H.0
        FT1DT9          0F427H.1
        FT1DT10         0F427H.2
        FT1DT11         0F427H.3
        FT1DT12         0F427H.4
        FT1DT13         0F427H.5
        FT1DT14         0F427H.6
        FT1DT15         0F427H.7

        FT1C0           0F428H.0
        FT1C1           0F428H.1
        FT1C2           0F428H.2
        FT1C3           0F428H.3
        FT1C4           0F428H.4
        FT1C5           0F428H.5
        FT1C6           0F428H.6
        FT1C7           0F428H.7

        FT1C8           0F429H.0
        FT1C9           0F429H.1
        FT1C10          0F429H.2
        FT1C11          0F429H.3
        FT1C12          0F429H.4
        FT1C13          0F429H.5
        FT1C14          0F429H.6
        FT1C15          0F429H.7

        FT1RUN          FT1CON0.0
        FT1TGEN         FT1CON0.1
        FT1EMGEN        FT1CON0.3
        FT1SDN          FT1CON0.5

        FT1UD           FT1CON1.0
        FT1FLGA         FT1CON1.4
        FT1FLGB         FT1CON1.5
        FT1FLGC         FT1CON1.6
        FT1STAT         FT1CON1.7

        FT1MD0          FT1MODL.0
        FT1MD1          FT1MODL.1
        FT1DTEN         FT1MODL.6
        FT1OST          FT1MODL.7

        FT1STPO         FT1MODH.0

        FT1CK0          FT1CLKL.0
        FT1CK1          FT1CLKL.1
        FT1CKD0         FT1CLKL.4
        FT1CKD1         FT1CLKL.5
        FT1CKD2         FT1CLKL.6

        FT1XCK0         FT1CLKH.0
        FT1XCK1         FT1CLKH.1
        FT1XCK2         FT1CLKH.2

        FT1ST0          FT1TRG0L.0
        FT1ST1          FT1TRG0L.1
        FT1EXCL         FT1TRG0L.2
        FT1CST          FT1TRG0L.3

        FT1STS0         FT1TRG0H.0
        FT1STS1         FT1TRG0H.1
        FT1STS2         FT1TRG0H.2
        FT1STS3         FT1TRG0H.3
        FT1STSS         FT1TRG0H.7

        FT1TRM0         FT1TRG1L.0
        FT1TRM1         FT1TRG1L.1
        FT1EST0         FT1TRG1L.4
        FT1EST1         FT1TRG1L.5

        FT1IEP          FT1INTEL.0
        FT1IEA          FT1INTEL.1
        FT1IEB          FT1INTEL.2
        FT1IETS         FT1INTEL.3
        FT1IETR         FT1INTEL.4

        FT1IOP          FT1INTEH.0
        FT1IOA          FT1INTEH.1
        FT1IOB          FT1INTEH.2

        FT1ISP          FT1INTSL.0
        FT1ISA          FT1INTSL.1
        FT1ISB          FT1INTSL.2
        FT1ISTS         FT1INTSL.3
        FT1ISTR         FT1INTSL.4
        FT1ISES         FT1INTSL.5

        FT1ICP          FT1INTCL.0
        FT1ICA          FT1INTCL.1
        FT1ICB          FT1INTCL.2
        FT1ICTS         FT1INTCL.3
        FT1ICTR         FT1INTCL.4
        FT1ICES         FT1INTCL.5

        FT1IR           FT1INTCH.7

        FT2P0           0F440H.0
        FT2P1           0F440H.1
        FT2P2           0F440H.2
        FT2P3           0F440H.3
        FT2P4           0F440H.4
        FT2P5           0F440H.5
        FT2P6           0F440H.6
        FT2P7           0F440H.7

        FT2P8           0F441H.0
        FT2P9           0F441H.1
        FT2P10          0F441H.2
        FT2P11          0F441H.3
        FT2P12          0F441H.4
        FT2P13          0F441H.5
        FT2P14          0F441H.6
        FT2P15          0F441H.7

        FT2EA0          0F442H.0
        FT2EA1          0F442H.1
        FT2EA2          0F442H.2
        FT2EA3          0F442H.3
        FT2EA4          0F442H.4
        FT2EA5          0F442H.5
        FT2EA6          0F442H.6
        FT2EA7          0F442H.7

        FT2EA8          0F443H.0
        FT2EA9          0F443H.1
        FT2EA10         0F443H.2
        FT2EA11         0F443H.3
        FT2EA12         0F443H.4
        FT2EA13         0F443H.5
        FT2EA14         0F443H.6
        FT2EA15         0F443H.7

        FT2EB0          0F444H.0
        FT2EB1          0F444H.1
        FT2EB2          0F444H.2
        FT2EB3          0F444H.3
        FT2EB4          0F444H.4
        FT2EB5          0F444H.5
        FT2EB6          0F444H.6
        FT2EB7          0F444H.7

        FT2EB8          0F445H.0
        FT2EB9          0F445H.1
        FT2EB10         0F445H.2
        FT2EB11         0F445H.3
        FT2EB12         0F445H.4
        FT2EB13         0F445H.5
        FT2EB14         0F445H.6
        FT2EB15         0F445H.7

        FT2DT0          0F446H.0
        FT2DT1          0F446H.1
        FT2DT2          0F446H.2
        FT2DT3          0F446H.3
        FT2DT4          0F446H.4
        FT2DT5          0F446H.5
        FT2DT6          0F446H.6
        FT2DT7          0F446H.7

        FT2DT8          0F447H.0
        FT2DT9          0F447H.1
        FT2DT10         0F447H.2
        FT2DT11         0F447H.3
        FT2DT12         0F447H.4
        FT2DT13         0F447H.5
        FT2DT14         0F447H.6
        FT2DT15         0F447H.7

        FT2C0           0F448H.0
        FT2C1           0F448H.1
        FT2C2           0F448H.2
        FT2C3           0F448H.3
        FT2C4           0F448H.4
        FT2C5           0F448H.5
        FT2C6           0F448H.6
        FT2C7           0F448H.7

        FT2C8           0F449H.0
        FT2C9           0F449H.1
        FT2C10          0F449H.2
        FT2C11          0F449H.3
        FT2C12          0F449H.4
        FT2C13          0F449H.5
        FT2C14          0F449H.6
        FT2C15          0F449H.7

        FT2RUN          FT2CON0.0
        FT2TGEN         FT2CON0.1
        FT2EMGEN        FT2CON0.3
        FT2SDN          FT2CON0.5

        FT2UD           FT2CON1.0
        FT2FLGA         FT2CON1.4
        FT2FLGB         FT2CON1.5
        FT2FLGC         FT2CON1.6
        FT2STAT         FT2CON1.7

        FT2MD0          FT2MODL.0
        FT2MD1          FT2MODL.1
        FT2DTEN         FT2MODL.6
        FT2OST          FT2MODL.7

        FT2STPO         FT2MODH.0

        FT2CK0          FT2CLKL.0
        FT2CK1          FT2CLKL.1
        FT2CKD0         FT2CLKL.4
        FT2CKD1         FT2CLKL.5
        FT2CKD2         FT2CLKL.6

        FT2XCK0         FT2CLKH.0
        FT2XCK1         FT2CLKH.1
        FT2XCK2         FT2CLKH.2

        FT2ST0          FT2TRG0L.0
        FT2ST1          FT2TRG0L.1
        FT2EXCL         FT2TRG0L.2
        FT2CST          FT2TRG0L.3

        FT2STS0         FT2TRG0H.0
        FT2STS1         FT2TRG0H.1
        FT2STS2         FT2TRG0H.2
        FT2STS3         FT2TRG0H.3
        FT2STSS         FT2TRG0H.7

        FT2TRM0         FT2TRG1L.0
        FT2TRM1         FT2TRG1L.1
        FT2EST0         FT2TRG1L.4
        FT2EST1         FT2TRG1L.5

        FT2IEP          FT2INTEL.0
        FT2IEA          FT2INTEL.1
        FT2IEB          FT2INTEL.2
        FT2IETS         FT2INTEL.3
        FT2IETR         FT2INTEL.4

        FT2IOP          FT2INTEH.0
        FT2IOA          FT2INTEH.1
        FT2IOB          FT2INTEH.2

        FT2ISP          FT2INTSL.0
        FT2ISA          FT2INTSL.1
        FT2ISB          FT2INTSL.2
        FT2ISTS         FT2INTSL.3
        FT2ISTR         FT2INTSL.4
        FT2ISES         FT2INTSL.5

        FT2ICP          FT2INTCL.0
        FT2ICA          FT2INTCL.1
        FT2ICB          FT2INTCL.2
        FT2ICTS         FT2INTCL.3
        FT2ICTR         FT2INTCL.4
        FT2ICES         FT2INTCL.5

        FT2IR           FT2INTCH.7

        FT3P0           0F460H.0
        FT3P1           0F460H.1
        FT3P2           0F460H.2
        FT3P3           0F460H.3
        FT3P4           0F460H.4
        FT3P5           0F460H.5
        FT3P6           0F460H.6
        FT3P7           0F460H.7

        FT3P8           0F461H.0
        FT3P9           0F461H.1
        FT3P10          0F461H.2
        FT3P11          0F461H.3
        FT3P12          0F461H.4
        FT3P13          0F461H.5
        FT3P14          0F461H.6
        FT3P15          0F461H.7

        FT3EA0          0F462H.0
        FT3EA1          0F462H.1
        FT3EA2          0F462H.2
        FT3EA3          0F462H.3
        FT3EA4          0F462H.4
        FT3EA5          0F462H.5
        FT3EA6          0F462H.6
        FT3EA7          0F462H.7

        FT3EA8          0F463H.0
        FT3EA9          0F463H.1
        FT3EA10         0F463H.2
        FT3EA11         0F463H.3
        FT3EA12         0F463H.4
        FT3EA13         0F463H.5
        FT3EA14         0F463H.6
        FT3EA15         0F463H.7

        FT3EB0          0F464H.0
        FT3EB1          0F464H.1
        FT3EB2          0F464H.2
        FT3EB3          0F464H.3
        FT3EB4          0F464H.4
        FT3EB5          0F464H.5
        FT3EB6          0F464H.6
        FT3EB7          0F464H.7

        FT3EB8          0F465H.0
        FT3EB9          0F465H.1
        FT3EB10         0F465H.2
        FT3EB11         0F465H.3
        FT3EB12         0F465H.4
        FT3EB13         0F465H.5
        FT3EB14         0F465H.6
        FT3EB15         0F465H.7

        FT3DT0          0F466H.0
        FT3DT1          0F466H.1
        FT3DT2          0F466H.2
        FT3DT3          0F466H.3
        FT3DT4          0F466H.4
        FT3DT5          0F466H.5
        FT3DT6          0F466H.6
        FT3DT7          0F466H.7

        FT3DT8          0F467H.0
        FT3DT9          0F467H.1
        FT3DT10         0F467H.2
        FT3DT11         0F467H.3
        FT3DT12         0F467H.4
        FT3DT13         0F467H.5
        FT3DT14         0F467H.6
        FT3DT15         0F467H.7

        FT3C0           0F468H.0
        FT3C1           0F468H.1
        FT3C2           0F468H.2
        FT3C3           0F468H.3
        FT3C4           0F468H.4
        FT3C5           0F468H.5
        FT3C6           0F468H.6
        FT3C7           0F468H.7

        FT3C8           0F469H.0
        FT3C9           0F469H.1
        FT3C10          0F469H.2
        FT3C11          0F469H.3
        FT3C12          0F469H.4
        FT3C13          0F469H.5
        FT3C14          0F469H.6
        FT3C15          0F469H.7

        FT3RUN          FT3CON0.0
        FT3TGEN         FT3CON0.1
        FT3EMGEN        FT3CON0.3
        FT3SDN          FT3CON0.5

        FT3UD           FT3CON1.0
        FT3FLGA         FT3CON1.4
        FT3FLGB         FT3CON1.5
        FT3FLGC         FT3CON1.6
        FT3STAT         FT3CON1.7

        FT3MD0          FT3MODL.0
        FT3MD1          FT3MODL.1
        FT3DTEN         FT3MODL.6
        FT3OST          FT3MODL.7

        FT3STPO         FT3MODH.0

        FT3CK0          FT3CLKL.0
        FT3CK1          FT3CLKL.1
        FT3CKD0         FT3CLKL.4
        FT3CKD1         FT3CLKL.5
        FT3CKD2         FT3CLKL.6

        FT3XCK0         FT3CLKH.0
        FT3XCK1         FT3CLKH.1
        FT3XCK2         FT3CLKH.2

        FT3ST0          FT3TRG0L.0
        FT3ST1          FT3TRG0L.1
        FT3EXCL         FT3TRG0L.2
        FT3CST          FT3TRG0L.3

        FT3STS0         FT3TRG0H.0
        FT3STS1         FT3TRG0H.1
        FT3STS2         FT3TRG0H.2
        FT3STS3         FT3TRG0H.3
        FT3STSS         FT3TRG0H.7

        FT3TRM0         FT3TRG1L.0
        FT3TRM1         FT3TRG1L.1
        FT3EST0         FT3TRG1L.4
        FT3EST1         FT3TRG1L.5

        FT3IEP          FT3INTEL.0
        FT3IEA          FT3INTEL.1
        FT3IEB          FT3INTEL.2
        FT3IETS         FT3INTEL.3
        FT3IETR         FT3INTEL.4

        FT3IOP          FT3INTEH.0
        FT3IOA          FT3INTEH.1
        FT3IOB          FT3INTEH.2

        FT3ISP          FT3INTSL.0
        FT3ISA          FT3INTSL.1
        FT3ISB          FT3INTSL.2
        FT3ISTS         FT3INTSL.3
        FT3ISTR         FT3INTSL.4
        FT3ISES         FT3INTSL.5

        FT3ICP          FT3INTCL.0
        FT3ICA          FT3INTCL.1
        FT3ICB          FT3INTCL.2
        FT3ICTS         FT3INTCL.3
        FT3ICTR         FT3INTCL.4
        FT3ICES         FT3INTCL.5

        FT3IR           FT3INTCH.7

        FTO0S0          FTO0SL.0
        FTO0S1          FTO0SL.1
        FTO0S2          FTO0SL.2
        FTO0SN          FTO0SL.7

        FTO1S0          FTO1SL.0
        FTO1S1          FTO1SL.1
        FTO1S2          FTO1SL.2
        FTO1SN          FTO1SL.7

        FTO2S0          FTO2SL.0
        FTO2S1          FTO2SL.1
        FTO2S2          FTO2SL.2
        FTO2SN          FTO2SL.7

        FTO3S0          FTO3SL.0
        FTO3S1          FTO3SL.1
        FTO3S2          FTO3SL.2
        FTO3SN          FTO3SL.7

        FTO4S0          FTO4SL.0
        FTO4S1          FTO4SL.1
        FTO4S2          FTO4SL.2
        FTO4SN          FTO4SL.7

        FTO5S0          FTO5SL.0
        FTO5S1          FTO5SL.1
        FTO5S2          FTO5SL.2
        FTO5SN          FTO5SL.7

        FTO6S0          FTO6SL.0
        FTO6S1          FTO6SL.1
        FTO6S2          FTO6SL.2
        FTO6SN          FTO6SL.7

        FTO7S0          FTO7SL.0
        FTO7S1          FTO7SL.1
        FTO7S2          FTO7SL.2
        FTO7SN          FTO7SL.7

        FTO8S0          FTO8SL.0
        FTO8S1          FTO8SL.1
        FTO8S2          FTO8SL.2
        FTO8SN          FTO8SL.7

        FTO9S0          FTO9SL.0
        FTO9S1          FTO9SL.1
        FTO9S2          FTO9SL.2
        FTO9SN          FTO9SL.7

        FTOAS0          FTOASL.0
        FTOAS1          FTOASL.1
        FTOAS2          FTOASL.2
        FTOASN          FTOASL.7

        FTOBS0          FTOBSL.0
        FTOBS1          FTOBSL.1
        FTOBS2          FTOBSL.2
        FTOBSN          FTOBSL.7

        FTOCS0          FTOCSL.0
        FTOCS1          FTOCSL.1
        FTOCS2          FTOCSL.2
        FTOCSN          FTOCSL.7

        FTODS0          FTODSL.0
        FTODS1          FTODSL.1
        FTODS2          FTODSL.2
        FTODSN          FTODSL.7

        FTOES0          FTOESL.0
        FTOES1          FTOESL.1
        FTOES2          FTOESL.2
        FTOESN          FTOESL.7

        FTOFS0          FTOFSL.0
        FTOFS1          FTOFSL.1
        FTOFS2          FTOFSL.2
        FTOFSN          FTOFSL.7

        S0B0            SIO0BUFL.0
        S0B1            SIO0BUFL.1
        S0B2            SIO0BUFL.2
        S0B3            SIO0BUFL.3
        S0B4            SIO0BUFL.4
        S0B5            SIO0BUFL.5
        S0B6            SIO0BUFL.6
        S0B7            SIO0BUFL.7

        S0B8            SIO0BUFH.0
        S0B9            SIO0BUFH.1
        S0B10           SIO0BUFH.2
        S0B11           SIO0BUFH.3
        S0B12           SIO0BUFH.4
        S0B13           SIO0BUFH.5
        S0B14           SIO0BUFH.6
        S0B15           SIO0BUFH.7

        S0EN            SIO0CON.0

        S0DIR           SIO0MOD0.0
        S0MD0           SIO0MOD0.1
        S0MD1           SIO0MOD0.2
        S0LG            SIO0MOD0.3

        S0CK0           SIO0MOD1.0
        S0CK1           SIO0MOD1.1
        S0CK2           SIO0MOD1.2
        S0CKT           SIO0MOD1.4
        S0NEG           SIO0MOD1.5

        U0B0            UA0BUF.0
        U0B1            UA0BUF.1
        U0B2            UA0BUF.2
        U0B3            UA0BUF.3
        U0B4            UA0BUF.4
        U0B5            UA0BUF.5
        U0B6            UA0BUF.6
        U0B7            UA0BUF.7

        U0EN            UA0CON.0

        U0CK0           UA0MOD0.1
        U0CK1           UA0MOD0.2
        U0RSS           UA0MOD0.6

        U0LG0           UA0MOD1.0
        U0LG1           UA0MOD1.1
        U0PT0           UA0MOD1.2
        U0PT1           UA0MOD1.3
        U0STP           UA0MOD1.4
        U0NEG           UA0MOD1.5
        U0DIR           UA0MOD1.6

        U0BR0           UA0BRTL.0
        U0BR1           UA0BRTL.1
        U0BR2           UA0BRTL.2
        U0BR3           UA0BRTL.3
        U0BR4           UA0BRTL.4
        U0BR5           UA0BRTL.5
        U0BR6           UA0BRTL.6
        U0BR7           UA0BRTL.7

        U0BR8           UA0BRTH.0
        U0BR9           UA0BRTH.1
        U0BR10          UA0BRTH.2
        U0BR11          UA0BRTH.3

        U0FER           UA0STAT.0
        U0OER           UA0STAT.1
        U0PER           UA0STAT.2

        U1B0            UA1BUF.0
        U1B1            UA1BUF.1
        U1B2            UA1BUF.2
        U1B3            UA1BUF.3
        U1B4            UA1BUF.4
        U1B5            UA1BUF.5
        U1B6            UA1BUF.6
        U1B7            UA1BUF.7

        U1EN            UA1CON.0

        U1FUL           UA1STAT.3

        I2F0SA1         I2F0SADL.1
        I2F0SA2         I2F0SADL.2
        I2F0SA3         I2F0SADL.3
        I2F0SA4         I2F0SADL.4
        I2F0SA5         I2F0SADL.5
        I2F0SA6         I2F0SADL.6
        I2F0SA7         I2F0SADL.7

        I2F0SA8         I2F0SADH.0
        I2F0SA9         I2F0SADH.1
        I2F0SA10        I2F0SADH.2

        I2F0MD0         I2F0CTLL.0
        I2F0MD1         I2F0CTLL.1
        I2F0RSTA        I2F0CTLL.2
        I2F0TXAK        I2F0CTLL.3
        I2F0MTX         I2F0CTLL.4
        I2F0MSTA        I2F0CTLL.5
        I2F0ASIE        I2F0CTLL.6
        I2F0MEN         I2F0CTLL.7

        I2F0CFIE        I2F0CTLH.1
        I2F0STPI        I2F0CTLH.3
        I2F0DLEN        I2F0CTLH.4
        I2F0CS          I2F0CTLH.5

        I2F0RXAK        I2F0SRL.0
        I2F0MIF         I2F0SRL.1
        I2F0SRW         I2F0SRL.2
        I2F0DRLD        I2F0SRL.3
        I2F0MBB         I2F0SRL.5
        I2F0MAAS        I2F0SRL.6
        I2F0MCF         I2F0SRL.7

        I2F0STP         I2F0SRH.1

        I2F0DA0         I2F0DRL.0
        I2F0DA1         I2F0DRL.1
        I2F0DA2         I2F0DRL.2
        I2F0DA3         I2F0DRL.3
        I2F0DA4         I2F0DRL.4
        I2F0DA5         I2F0DRL.5
        I2F0DA6         I2F0DRL.6
        I2F0DA7         I2F0DRL.7

        I2F0SCL         I2F0MONL.0
        I2F0SDA         I2F0MONL.1

        I2F0BC0         I2F0BCL.0
        I2F0BC1         I2F0BCL.1
        I2F0BC2         I2F0BCL.2
        I2F0BC3         I2F0BCL.3
        I2F0BC4         I2F0BCL.4
        I2F0BC5         I2F0BCL.5
        I2F0BC6         I2F0BCL.6

        I2F0BMEN        I2F0MODL.0

        I2F0BA0         I2F0BSVL.0
        I2F0BA1         I2F0BSVL.1
        I2F0BA2         I2F0BSVL.2
        I2F0BA3         I2F0BSVL.3
        I2F0BA4         I2F0BSVL.4
        I2F0BA5         I2F0BSVL.5
        I2F0BA6         I2F0BSVL.6
        I2F0BA7         I2F0BSVL.7

        I2F0BA8         I2F0BSVH.0
        I2F0BA9         I2F0BSVH.1
        I2F0BA10        I2F0BSVH.2
        I2F0BA11        I2F0BSVH.3
        I2F0BA12        I2F0BSVH.4
        I2F0BA13        I2F0BSVH.5
        I2F0BA14        I2F0BSVH.6
        I2F0BA15        I2F0BSVH.7

        I2F0BS00        I2F0BSBL.0
        I2F0BS01        I2F0BSBL.1
        I2F0BS02        I2F0BSBL.2
        I2F0BS03        I2F0BSBL.3
        I2F0BS04        I2F0BSBL.4
        I2F0BS05        I2F0BSBL.5
        I2F0BS06        I2F0BSBL.6
        I2F0BS07        I2F0BSBL.7

        I2F0BS10        I2F0BSBH.0
        I2F0BS11        I2F0BSBH.1
        I2F0BS12        I2F0BSBH.2
        I2F0BS13        I2F0BSBH.3
        I2F0BS14        I2F0BSBH.4
        I2F0BS15        I2F0BSBH.5
        I2F0BS16        I2F0BSBH.6
        I2F0BS17        I2F0BSBH.7

        I2F0BSL0        I2F0BFRL.0
        I2F0BSL1        I2F0BFRL.1
        I2F0BMRW        I2F0BFRL.3

        I2F0BDL0        I2F0BFRH.0
        I2F0BDL1        I2F0BFRH.1
        I2F0BDL2        I2F0BFRH.2
        I2F0BDL3        I2F0BFRH.3
        I2F0BDL4        I2F0BFRH.4

        I2F0BMST        I2F0BCTL.0

        I2F0BFIE        I2F0BMKL.0
        I2F0BNIE        I2F0BMKL.2
        I2F0BTIE        I2F0BMKL.3
        I2F0BSIE        I2F0BMKL.4
        I2F0BAIE        I2F0BMKL.5
        I2F0BDIE        I2F0BMKL.6

        I2F0BMFI        I2F0BSRL.0
        I2F0BMNA        I2F0BSRL.2
        I2F0BMTO        I2F0BSRL.3
        I2F0BMIS        I2F0BSRL.4
        I2F0BMAG        I2F0BSRL.5
        I2F0BMDZ        I2F0BSRL.6

        I2F0BML0        I2F0BLVL.0
        I2F0BML1        I2F0BLVL.1
        I2F0BML2        I2F0BLVL.2
        I2F0BML3        I2F0BLVL.3
        I2F0BML4        I2F0BLVL.4

        I2F0T0          I2F0TMRL.0
        I2F0T1          I2F0TMRL.1
        I2F0T2          I2F0TMRL.2
        I2F0T3          I2F0TMRL.3
        I2F0T4          I2F0TMRL.4
        I2F0T5          I2F0TMRL.5
        I2F0T6          I2F0TMRL.6
        I2F0T7          I2F0TMRL.7

        I2F0T8          I2F0TMRH.0
        I2F0T9          I2F0TMRH.1
        I2F0T10         I2F0TMRH.2
        I2F0T11         I2F0TMRH.3
        I2F0T12         I2F0TMRH.4
        I2F0T13         I2F0TMRH.5
        I2F0T14         I2F0TMRH.6
        I2F0T15         I2F0TMRH.7

        I2F0NFON        I2F0NFL.0

        I2F0INTU        I2F0IUL.0

        I21R0           I2C1RD.0
        I21R1           I2C1RD.1
        I21R2           I2C1RD.2
        I21R3           I2C1RD.3
        I21R4           I2C1RD.4
        I21R5           I2C1RD.5
        I21R6           I2C1RD.6
        I21R7           I2C1RD.7

        I21RW           I2C1SA.0
        I21A0           I2C1SA.1
        I21A1           I2C1SA.2
        I21A2           I2C1SA.3
        I21A3           I2C1SA.4
        I21A4           I2C1SA.5
        I21A5           I2C1SA.6
        I21A6           I2C1SA.7

        I21T0           I2C1TD.0
        I21T1           I2C1TD.1
        I21T2           I2C1TD.2
        I21T3           I2C1TD.3
        I21T4           I2C1TD.4
        I21T5           I2C1TD.5
        I21T6           I2C1TD.6
        I21T7           I2C1TD.7

        I21ST           I2C1CON0.0
        I21SP           I2C1CON0.1
        I21RS           I2C1CON0.2
        I21ACT          I2C1CON0.7

        I21EN           I2C1MODL.0
        I21MD           I2C1MODL.1
        I21DW0          I2C1MODL.2
        I21DW1          I2C1MODL.3

        I21CD0          I2C1MODH.0
        I21CD1          I2C1MODH.1

        I21ACR          I2C1STAL.1
        I21ER           I2C1STAL.2

        SF0SPE          SF0CTRLL.0
        SF0MST          SF0CTRLL.1
        SF0SIZ          SF0CTRLL.2
        SF0MDFE         SF0CTRLL.3
        SF0LSB          SF0CTRLL.4
        SF0CPHA         SF0CTRLL.5
        SF0CPOL         SF0CTRLL.6

        SF0FICL         SF0CTRLH.0
        SF0SSZ          SF0CTRLH.1
        SF0SOZ          SF0CTRLH.2
        SF0MOZ          SF0CTRLH.3

        SF0TFIE         SF0INTCL.0
        SF0RFIE         SF0INTCL.1
        SF0FIE          SF0INTCL.2
        SF0ORIE         SF0INTCL.3
        SF0MFIE         SF0INTCL.4

        SF0TFIC0        SF0INTCH.0
        SF0TFIC1        SF0INTCH.1
        SF0TFIC2        SF0INTCH.2
        SF0TFIC3        SF0INTCH.3
        SF0RFIC0        SF0INTCH.4
        SF0RFIC1        SF0INTCH.5
        SF0RFIC2        SF0INTCH.6
        SF0RFIC3        SF0INTCH.7

        SF0DTL0         SF0TRACL.0
        SF0DTL1         SF0TRACL.1
        SF0DTL2         SF0TRACL.2
        SF0DTL3         SF0TRACL.3
        SF0DTL4         SF0TRACL.4
        SF0DTL5         SF0TRACL.5
        SF0DTL6         SF0TRACL.6
        SF0DTL7         SF0TRACL.7

        SF0DTL8         SF0TRACH.0

        SF0BR0          SF0BRRL.0
        SF0BR1          SF0BRRL.1
        SF0BR2          SF0BRRL.2
        SF0BR3          SF0BRRL.3
        SF0BR4          SF0BRRL.4
        SF0BR5          SF0BRRL.5
        SF0BR6          SF0BRRL.6
        SF0BR7          SF0BRRL.7

        SF0BR8          SF0BRRH.0
        SF0BR9          SF0BRRH.1
        SF0LEAD0        SF0BRRH.4
        SF0LEAD1        SF0BRRH.5
        SF0LAG0         SF0BRRH.6
        SF0LAG1         SF0BRRH.7

        SF0TFI          SF0SRRL.0
        SF0RFI          SF0SRRL.1
        SF0FI           SF0SRRL.2
        SF0ORF          SF0SRRL.3
        SF0MDF          SF0SRRL.4
        SF0SPIF         SF0SRRL.5

        SF0WOF          SF0SRRH.0
        SF0TFF          SF0SRRH.1
        SF0TFE          SF0SRRH.2
        SF0RFF          SF0SRRH.3
        SF0RFE          SF0SRRH.4

        SF0TFC          SF0SRCL.0
        SF0RFC          SF0SRCL.1
        SF0FC           SF0SRCL.2
        SF0ORFC         SF0SRCL.3
        SF0MDFC         SF0SRCL.4
        SF0SPIFC        SF0SRCL.5

        SF0WOFC         SF0SRCH.0
        SF0IRQ          SF0SRCH.7

        SF0TFD0         SF0FSRL.0
        SF0TFD1         SF0FSRL.1
        SF0TFD2         SF0FSRL.2
        SF0TFD3         SF0FSRL.3
        SF0TFD4         SF0FSRL.4

        SF0RFD0         SF0FSRH.0
        SF0RFD1         SF0FSRH.1
        SF0RFD2         SF0FSRH.2
        SF0RFD3         SF0FSRH.3
        SF0RFD4         SF0FSRH.4

        SF0WD0          SF0DWRL.0
        SF0WD1          SF0DWRL.1
        SF0WD2          SF0DWRL.2
        SF0WD3          SF0DWRL.3
        SF0WD4          SF0DWRL.4
        SF0WD5          SF0DWRL.5
        SF0WD6          SF0DWRL.6
        SF0WD7          SF0DWRL.7

        SF0WD8          SF0DWRH.0
        SF0WD9          SF0DWRH.1
        SF0WD10         SF0DWRH.2
        SF0WD11         SF0DWRH.3
        SF0WD12         SF0DWRH.4
        SF0WD13         SF0DWRH.5
        SF0WD14         SF0DWRH.6
        SF0WD15         SF0DWRH.7

        SF0RD0          SF0DRRL.0
        SF0RD1          SF0DRRL.1
        SF0RD2          SF0DRRL.2
        SF0RD3          SF0DRRL.3
        SF0RD4          SF0DRRL.4
        SF0RD5          SF0DRRL.5
        SF0RD6          SF0DRRL.6
        SF0RD7          SF0DRRL.7

        SF0RD8          SF0DRRH.0
        SF0RD9          SF0DRRH.1
        SF0RD10         SF0DRRH.2
        SF0RD11         SF0DRRH.3
        SF0RD12         SF0DRRH.4
        SF0RD13         SF0DRRH.5
        SF0RD14         SF0DRRH.6
        SF0RD15         SF0DRRH.7

        UF1B0           UAF1BUFL.0
        UF1B1           UAF1BUFL.1
        UF1B2           UAF1BUFL.2
        UF1B3           UAF1BUFL.3
        UF1B4           UAF1BUFL.4
        UF1B5           UAF1BUFL.5
        UF1B6           UAF1BUFL.6
        UF1B7           UAF1BUFL.7

        UF1B8           UAF1BUFH.0
        UF1B9           UAF1BUFH.1
        UF1B10          UAF1BUFH.2
        UF1B11          UAF1BUFH.3
        UF1B12          UAF1BUFH.4
        UF1B13          UAF1BUFH.5
        UF1B14          UAF1BUFH.6
        UF1B15          UAF1BUFH.7

        UF1ERBFI        UAF1IERL.0
        UF1ETBEI        UAF1IERL.1
        UF1ELSI         UAF1IERL.2
        UF1TEMTI        UAF1IERL.6

        UF1IRP          UAF1IIRL.0
        UF1IRID0        UAF1IIRL.1
        UF1IRID1        UAF1IIRL.2
        UF1IRID2        UAF1IIRL.3
        UF1FMD0         UAF1IIRL.6
        UF1FMD1         UAF1IIRL.7

        UF1LG0          UAF1MODL.0
        UF1LG1          UAF1MODL.1
        UF1STP          UAF1MODL.2
        UF1PT0          UAF1MODL.3
        UF1PT1          UAF1MODL.4
        UF1PT2          UAF1MODL.5
        UF1BC           UAF1MODL.6
        UF1DLAB         UAF1MODL.7

        UF1FEN          UAF1MODH.0
        UF1RFR          UAF1MODH.1
        UF1TFR          UAF1MODH.2
        UF1FTL0         UAF1MODH.4
        UF1FTL1         UAF1MODH.5
        UF1FTL2         UAF1MODH.6
        UF1FTL3         UAF1MODH.7

        UF1DR           UAF1LSRL.0
        UF1OER          UAF1LSRL.1
        UF1PER          UAF1LSRL.2
        UF1FER          UAF1LSRL.3
        UF1BI           UAF1LSRL.4
        UF1THRE         UAF1LSRL.5
        UF1TEMT         UAF1LSRL.6
        UF1RFE          UAF1LSRL.7

        UF1TIDL         UAF1LSRH.0

        UF1CAJ0         UAF1CAJL.0
        UF1CAJ1         UAF1CAJL.1
        UF1CAJ2         UAF1CAJL.2
        UF1CAJ3         UAF1CAJL.3
        UF1CAJ4         UAF1CAJL.4
        UF1RMV          UAF1CAJL.6

        UF1IRQ          UAF1IRQL.0

        UF0B0           UAF0BUFL.0
        UF0B1           UAF0BUFL.1
        UF0B2           UAF0BUFL.2
        UF0B3           UAF0BUFL.3
        UF0B4           UAF0BUFL.4
        UF0B5           UAF0BUFL.5
        UF0B6           UAF0BUFL.6
        UF0B7           UAF0BUFL.7

        UF0B8           UAF0BUFH.0
        UF0B9           UAF0BUFH.1
        UF0B10          UAF0BUFH.2
        UF0B11          UAF0BUFH.3
        UF0B12          UAF0BUFH.4
        UF0B13          UAF0BUFH.5
        UF0B14          UAF0BUFH.6
        UF0B15          UAF0BUFH.7

        UF0ERBFI        UAF0IERL.0
        UF0ETBEI        UAF0IERL.1
        UF0ELSI         UAF0IERL.2
        UF0TEMTI        UAF0IERL.6

        UF0IRP          UAF0IIRL.0
        UF0IRID0        UAF0IIRL.1
        UF0IRID1        UAF0IIRL.2
        UF0IRID2        UAF0IIRL.3
        UF0FMD0         UAF0IIRL.6
        UF0FMD1         UAF0IIRL.7

        UF0LG0          UAF0MODL.0
        UF0LG1          UAF0MODL.1
        UF0STP          UAF0MODL.2
        UF0PT0          UAF0MODL.3
        UF0PT1          UAF0MODL.4
        UF0PT2          UAF0MODL.5
        UF0BC           UAF0MODL.6
        UF0DLAB         UAF0MODL.7

        UF0FEN          UAF0MODH.0
        UF0RFR          UAF0MODH.1
        UF0TFR          UAF0MODH.2
        UF0FTL0         UAF0MODH.4
        UF0FTL1         UAF0MODH.5
        UF0FTL2         UAF0MODH.6
        UF0FTL3         UAF0MODH.7

        UF0DR           UAF0LSRL.0
        UF0OER          UAF0LSRL.1
        UF0PER          UAF0LSRL.2
        UF0FER          UAF0LSRL.3
        UF0BI           UAF0LSRL.4
        UF0THRE         UAF0LSRL.5
        UF0TEMT         UAF0LSRL.6
        UF0RFE          UAF0LSRL.7

        UF0TIDL         UAF0LSRH.0

        UF0CAJ0         UAF0CAJL.0
        UF0CAJ1         UAF0CAJL.1
        UF0CAJ2         UAF0CAJL.2
        UF0CAJ3         UAF0CAJL.3
        UF0CAJ4         UAF0CAJL.4
        UF0RMV          UAF0CAJL.6

        UF0IRQ          UAF0IRQL.0

        I2F1SA1         I2F1SADL.1
        I2F1SA2         I2F1SADL.2
        I2F1SA3         I2F1SADL.3
        I2F1SA4         I2F1SADL.4
        I2F1SA5         I2F1SADL.5
        I2F1SA6         I2F1SADL.6
        I2F1SA7         I2F1SADL.7

        I2F1SA8         I2F1SADH.0
        I2F1SA9         I2F1SADH.1
        I2F1SA10        I2F1SADH.2

        I2F1MD0         I2F1CTLL.0
        I2F1MD1         I2F1CTLL.1
        I2F1RSTA        I2F1CTLL.2
        I2F1TXAK        I2F1CTLL.3
        I2F1MTX         I2F1CTLL.4
        I2F1MSTA        I2F1CTLL.5
        I2F1ASIE        I2F1CTLL.6
        I2F1MEN         I2F1CTLL.7

        I2F1CFIE        I2F1CTLH.1
        I2F1STPI        I2F1CTLH.3
        I2F1DLEN        I2F1CTLH.4
        I2F1CS          I2F1CTLH.5

        I2F1RXAK        I2F1SRL.0
        I2F1MIF         I2F1SRL.1
        I2F1SRW         I2F1SRL.2
        I2F1DRLD        I2F1SRL.3
        I2F1MBB         I2F1SRL.5
        I2F1MAAS        I2F1SRL.6
        I2F1MCF         I2F1SRL.7

        I2F1STP         I2F1SRH.1

        I2F1DA0         I2F1DRL.0
        I2F1DA1         I2F1DRL.1
        I2F1DA2         I2F1DRL.2
        I2F1DA3         I2F1DRL.3
        I2F1DA4         I2F1DRL.4
        I2F1DA5         I2F1DRL.5
        I2F1DA6         I2F1DRL.6
        I2F1DA7         I2F1DRL.7

        I2F1SCL         I2F1MONL.0
        I2F1SDA         I2F1MONL.1

        I2F1BC0         I2F1BCL.0
        I2F1BC1         I2F1BCL.1
        I2F1BC2         I2F1BCL.2
        I2F1BC3         I2F1BCL.3
        I2F1BC4         I2F1BCL.4
        I2F1BC5         I2F1BCL.5
        I2F1BC6         I2F1BCL.6

        I2F1BMEN        I2F1MODL.0

        I2F1BA0         I2F1BSVL.0
        I2F1BA1         I2F1BSVL.1
        I2F1BA2         I2F1BSVL.2
        I2F1BA3         I2F1BSVL.3
        I2F1BA4         I2F1BSVL.4
        I2F1BA5         I2F1BSVL.5
        I2F1BA6         I2F1BSVL.6
        I2F1BA7         I2F1BSVL.7

        I2F1BA8         I2F1BSVH.0
        I2F1BA9         I2F1BSVH.1
        I2F1BA10        I2F1BSVH.2
        I2F1BA11        I2F1BSVH.3
        I2F1BA12        I2F1BSVH.4
        I2F1BA13        I2F1BSVH.5
        I2F1BA14        I2F1BSVH.6
        I2F1BA15        I2F1BSVH.7

        I2F1BS00        I2F1BSBL.0
        I2F1BS01        I2F1BSBL.1
        I2F1BS02        I2F1BSBL.2
        I2F1BS03        I2F1BSBL.3
        I2F1BS04        I2F1BSBL.4
        I2F1BS05        I2F1BSBL.5
        I2F1BS06        I2F1BSBL.6
        I2F1BS07        I2F1BSBL.7

        I2F1BS10        I2F1BSBH.0
        I2F1BS11        I2F1BSBH.1
        I2F1BS12        I2F1BSBH.2
        I2F1BS13        I2F1BSBH.3
        I2F1BS14        I2F1BSBH.4
        I2F1BS15        I2F1BSBH.5
        I2F1BS16        I2F1BSBH.6
        I2F1BS17        I2F1BSBH.7

        I2F1BSL0        I2F1BFRL.0
        I2F1BSL1        I2F1BFRL.1
        I2F1BMRW        I2F1BFRL.3

        I2F1BDL0        I2F1BFRH.0
        I2F1BDL1        I2F1BFRH.1
        I2F1BDL2        I2F1BFRH.2
        I2F1BDL3        I2F1BFRH.3
        I2F1BDL4        I2F1BFRH.4

        I2F1BMST        I2F1BCTL.0

        I2F1BFIE        I2F1BMKL.0
        I2F1BNIE        I2F1BMKL.2
        I2F1BTIE        I2F1BMKL.3
        I2F1BSIE        I2F1BMKL.4
        I2F1BAIE        I2F1BMKL.5
        I2F1BDIE        I2F1BMKL.6

        I2F1BMFI        I2F1BSRL.0
        I2F1BMNA        I2F1BSRL.2
        I2F1BMTO        I2F1BSRL.3
        I2F1BMIS        I2F1BSRL.4
        I2F1BMAG        I2F1BSRL.5
        I2F1BMDZ        I2F1BSRL.6

        I2F1BML0        I2F1BLVL.0
        I2F1BML1        I2F1BLVL.1
        I2F1BML2        I2F1BLVL.2
        I2F1BML3        I2F1BLVL.3
        I2F1BML4        I2F1BLVL.4

        I2F1T0          I2F1TMRL.0
        I2F1T1          I2F1TMRL.1
        I2F1T2          I2F1TMRL.2
        I2F1T3          I2F1TMRL.3
        I2F1T4          I2F1TMRL.4
        I2F1T5          I2F1TMRL.5
        I2F1T6          I2F1TMRL.6
        I2F1T7          I2F1TMRL.7

        I2F1T8          I2F1TMRH.0
        I2F1T9          I2F1TMRH.1
        I2F1T10         I2F1TMRH.2
        I2F1T11         I2F1TMRH.3
        I2F1T12         I2F1TMRH.4
        I2F1T13         I2F1TMRH.5
        I2F1T14         I2F1TMRH.6
        I2F1T15         I2F1TMRH.7

        I2F1NFON        I2F1NFL.0

        I2F1INTU        I2F1IUL.0

        RAA0            RADCA0L.0
        RAA1            RADCA0L.1
        RAA2            RADCA0L.2
        RAA3            RADCA0L.3
        RAA4            RADCA0L.4
        RAA5            RADCA0L.5
        RAA6            RADCA0L.6
        RAA7            RADCA0L.7

        RAA8            RADCA0H.0
        RAA9            RADCA0H.1
        RAA10           RADCA0H.2
        RAA11           RADCA0H.3
        RAA12           RADCA0H.4
        RAA13           RADCA0H.5
        RAA14           RADCA0H.6
        RAA15           RADCA0H.7

        RAA16           RADCA1L.0
        RAA17           RADCA1L.1
        RAA18           RADCA1L.2
        RAA19           RADCA1L.3
        RAA20           RADCA1L.4
        RAA21           RADCA1L.5
        RAA22           RADCA1L.6
        RAA23           RADCA1L.7

        RAB0            RADCB0L.0
        RAB1            RADCB0L.1
        RAB2            RADCB0L.2
        RAB3            RADCB0L.3
        RAB4            RADCB0L.4
        RAB5            RADCB0L.5
        RAB6            RADCB0L.6
        RAB7            RADCB0L.7

        RAB8            RADCB0H.0
        RAB9            RADCB0H.1
        RAB10           RADCB0H.2
        RAB11           RADCB0H.3
        RAB12           RADCB0H.4
        RAB13           RADCB0H.5
        RAB14           RADCB0H.6
        RAB15           RADCB0H.7

        RAB16           RADCB1L.0
        RAB17           RADCB1L.1
        RAB18           RADCB1L.2
        RAB19           RADCB1L.3
        RAB20           RADCB1L.4
        RAB21           RADCB1L.5
        RAB22           RADCB1L.6
        RAB23           RADCB1L.7

        OM0             RADMODL.0
        OM1             RADMODL.1
        OM2             RADMODL.2
        OM3             RADMODL.3
        RADI            RADMODL.4
        RACK0           RADMODL.5
        RACK1           RADMODL.6
        RACK2           RADMODL.7

        RARUN           RADCONL.0

        SAR00           SADR0L.0
        SAR01           SADR0L.1
        SAR02           SADR0L.2
        SAR03           SADR0L.3
        SAR04           SADR0L.4
        SAR05           SADR0L.5
        SAR06           SADR0L.6
        SAR07           SADR0L.7

        SAR08           SADR0H.0
        SAR09           SADR0H.1
        SAR0A           SADR0H.2
        SAR0B           SADR0H.3

        SAR10           SADR1L.0
        SAR11           SADR1L.1
        SAR12           SADR1L.2
        SAR13           SADR1L.3
        SAR14           SADR1L.4
        SAR15           SADR1L.5
        SAR16           SADR1L.6
        SAR17           SADR1L.7

        SAR18           SADR1H.0
        SAR19           SADR1H.1
        SAR1A           SADR1H.2
        SAR1B           SADR1H.3

        SAR20           SADR2L.0
        SAR21           SADR2L.1
        SAR22           SADR2L.2
        SAR23           SADR2L.3
        SAR24           SADR2L.4
        SAR25           SADR2L.5
        SAR26           SADR2L.6
        SAR27           SADR2L.7

        SAR28           SADR2H.0
        SAR29           SADR2H.1
        SAR2A           SADR2H.2
        SAR2B           SADR2H.3

        SAR30           SADR3L.0
        SAR31           SADR3L.1
        SAR32           SADR3L.2
        SAR33           SADR3L.3
        SAR34           SADR3L.4
        SAR35           SADR3L.5
        SAR36           SADR3L.6
        SAR37           SADR3L.7

        SAR38           SADR3H.0
        SAR39           SADR3H.1
        SAR3A           SADR3H.2
        SAR3B           SADR3H.3

        SAR40           SADR4L.0
        SAR41           SADR4L.1
        SAR42           SADR4L.2
        SAR43           SADR4L.3
        SAR44           SADR4L.4
        SAR45           SADR4L.5
        SAR46           SADR4L.6
        SAR47           SADR4L.7

        SAR48           SADR4H.0
        SAR49           SADR4H.1
        SAR4A           SADR4H.2
        SAR4B           SADR4H.3

        SAR50           SADR5L.0
        SAR51           SADR5L.1
        SAR52           SADR5L.2
        SAR53           SADR5L.3
        SAR54           SADR5L.4
        SAR55           SADR5L.5
        SAR56           SADR5L.6
        SAR57           SADR5L.7

        SAR58           SADR5H.0
        SAR59           SADR5H.1
        SAR5A           SADR5H.2
        SAR5B           SADR5H.3

        SAR60           SADR6L.0
        SAR61           SADR6L.1
        SAR62           SADR6L.2
        SAR63           SADR6L.3
        SAR64           SADR6L.4
        SAR65           SADR6L.5
        SAR66           SADR6L.6
        SAR67           SADR6L.7

        SAR68           SADR6H.0
        SAR69           SADR6H.1
        SAR6A           SADR6H.2
        SAR6B           SADR6H.3

        SAR70           SADR7L.0
        SAR71           SADR7L.1
        SAR72           SADR7L.2
        SAR73           SADR7L.3
        SAR74           SADR7L.4
        SAR75           SADR7L.5
        SAR76           SADR7L.6
        SAR77           SADR7L.7

        SAR78           SADR7H.0
        SAR79           SADR7H.1
        SAR7A           SADR7H.2
        SAR7B           SADR7H.3

        SAR80           SADR8L.0
        SAR81           SADR8L.1
        SAR82           SADR8L.2
        SAR83           SADR8L.3
        SAR84           SADR8L.4
        SAR85           SADR8L.5
        SAR86           SADR8L.6
        SAR87           SADR8L.7

        SAR88           SADR8H.0
        SAR89           SADR8H.1
        SAR8A           SADR8H.2
        SAR8B           SADR8H.3

        SAR90           SADR9L.0
        SAR91           SADR9L.1
        SAR92           SADR9L.2
        SAR93           SADR9L.3
        SAR94           SADR9L.4
        SAR95           SADR9L.5
        SAR96           SADR9L.6
        SAR97           SADR9L.7

        SAR98           SADR9H.0
        SAR99           SADR9H.1
        SAR9A           SADR9H.2
        SAR9B           SADR9H.3

        SARA0           SADRAL.0
        SARA1           SADRAL.1
        SARA2           SADRAL.2
        SARA3           SADRAL.3
        SARA4           SADRAL.4
        SARA5           SADRAL.5
        SARA6           SADRAL.6
        SARA7           SADRAL.7

        SARA8           SADRAH.0
        SARA9           SADRAH.1
        SARAA           SADRAH.2
        SARAB           SADRAH.3

        SARB0           SADRBL.0
        SARB1           SADRBL.1
        SARB2           SADRBL.2
        SARB3           SADRBL.3
        SARB4           SADRBL.4
        SARB5           SADRBL.5
        SARB6           SADRBL.6
        SARB7           SADRBL.7

        SARB8           SADRBH.0
        SARB9           SADRBH.1
        SARBA           SADRBH.2
        SARBB           SADRBH.3

        SALP            SADCON0.0
        SACK            SADCON0.1
        SATCM           SADCON0.2
        SACD0           SADCON0.4
        SACD1           SADCON0.5

        SARUN           SADCON1.0

        SACH0           SADENL.0
        SACH1           SADENL.1
        SACH2           SADENL.2
        SACH3           SADENL.3
        SACH4           SADENL.4
        SACH5           SADENL.5
        SACH6           SADENL.6
        SACH7           SADENL.7

        SACH8           SADENH.0
        SACH9           SADENH.1
        SACHA           SADENH.2
        SACHB           SADENH.3

        SATCH0          SADTCHL.0
        SATCH1          SADTCHL.1
        SATCH2          SADTCHL.2
        SATCH3          SADTCHL.3
        SATCH4          SADTCHL.4
        SATCH5          SADTCHL.5
        SATCH6          SADTCHL.6
        SATCH7          SADTCHL.7

        SATCH8          SADTCHH.0
        SATCH9          SADTCHH.1
        SATCHA          SADTCHH.2
        SATCHB          SADTCHH.3

        SAST0           SADTRGL.0

        SASTS0          SADTRGH.0
        SASTS1          SADTRGH.1
        SASTS2          SADTRGH.2
        SASTS3          SADTRGH.3
        SASTS4          SADTRGH.4

        SADCT0          SADCVTL.0
        SADCT1          SADCVTL.1
        SADCT2          SADCVTL.2
        SADCT3          SADCVTL.3
        SADCT4          SADCVTL.4
        SADCT5          SADCVTL.5
        SADCT6          SADCVTL.6
        SADCT7          SADCVTL.7

        SACPT0          SADCVTH.0
        SACPT1          SADCVTH.1
        SACPT2          SADCVTH.2
        SAPCT0          SADCVTH.3
        SAPCT1          SADCVTH.4
        SAPCT2          SADCVTH.5
        SAPCT3          SADCVTH.6
        SAPCT4          SADCVTH.7

        M0RUN           MD0CON.0
        BZMD            MD0CON.1

        M0TM0           MD0TMP.0
        M0TM1           MD0TMP.1
        M0TM2           MD0TMP.2
        M0TM3           MD0TMP.3

        M0TN0           MD0TON.0
        M0TN1           MD0TON.1
        M0TN2           MD0TON.2
        M0TN3           MD0TON.3
        M0TN4           MD0TON.4
        M0TN5           MD0TON.5
        M0TN6           MD0TON.6

        M0LN0           MD0LEN.0
        M0LN1           MD0LEN.1
        M0LN2           MD0LEN.2
        M0LN3           MD0LEN.3
        M0LN4           MD0LEN.4
        M0LN5           MD0LEN.5

        VLSLV0          VLSCONL.0
        VLSLV1          VLSCONL.1
        VLSLV2          VLSCONL.2
        VLSLV3          VLSCONL.3
        VLSLV4          VLSCONL.4
        VLSLV5          VLSCONL.5

        ENVLS           VLSCONH.0
        VLSF            VLSCONH.1
        VLSRF           VLSCONH.2
        VLSPE           VLSCONH.7

        VLSSEL0         VLSMODL.0
        VLSSEL1         VLSMODL.1

        VLSSM0          VLSMODH.0
        VLSAMD0         VLSMODH.1
        VLSAMD1         VLSMODH.2

        CMP0EN          CMP0CON.0
        CMP0D           CMP0CON.1
        CMP0RF          CMP0CON.2

        CMP0E0          CMP0MODL.0
        CMP0E1          CMP0MODL.1
        CMP0MD0         CMP0MODL.4
        CMP0MD1         CMP0MODL.5

        CMP0SM0         CMP0MODH.0
        CMP0SM1         CMP0MODH.1
        CMP0CK          CMP0MODH.4

        CMP1EN          CMP1CON.0
        CMP1D           CMP1CON.1
        CMP1RF          CMP1CON.2

        CMP1E0          CMP1MODL.0
        CMP1E1          CMP1MODL.1
        CMP1MD0         CMP1MODL.4
        CMP1MD1         CMP1MODL.5

        CMP1SM0         CMP1MODH.0
        CMP1SM1         CMP1MODH.1
        CMP1CK          CMP1MODH.4

        P00IM0          P0EXI0.0
        P00IM1          P0EXI0.1
        P00IM2          P0EXI0.2
        P00IM3          P0EXI0.3
        P01IM0          P0EXI0.4
        P01IM1          P0EXI0.5
        P01IM2          P0EXI0.6
        P01IM3          P0EXI0.7

        P02IM0          P0EXI1.0
        P02IM1          P0EXI1.1
        P02IM2          P0EXI1.2
        P02IM3          P0EXI1.3
        P03IM0          P0EXI1.4
        P03IM1          P0EXI1.5
        P03IM2          P0EXI1.6
        P03IM3          P0EXI1.7

        P04IM0          P0EXI2.0
        P04IM1          P0EXI2.1
        P04IM2          P0EXI2.2
        P04IM3          P0EXI2.3
        P05IM0          P0EXI2.4
        P05IM1          P0EXI2.5
        P05IM2          P0EXI2.6
        P05IM3          P0EXI2.7

        P00IE           P0IE.0
        P01IE           P0IE.1
        P02IE           P0IE.2
        P03IE           P0IE.3
        P04IE           P0IE.4
        P05IE           P0IE.5

        P00IS           P0IS.0
        P01IS           P0IS.1
        P02IS           P0IS.2
        P03IS           P0IS.3
        P04IS           P0IS.4
        P05IS           P0IS.5

        P00IC           P0IC.0
        P01IC           P0IC.1
        P02IC           P0IC.2
        P03IC           P0IC.3
        P04IC           P0IC.4
        P05IC           P0IC.5

        P0INTU          P0IU.0

        P20IM0          P2EXI0.0
        P20IM1          P2EXI0.1
        P20IM2          P2EXI0.2
        P20IM3          P2EXI0.3
        P21IM0          P2EXI0.4
        P21IM1          P2EXI0.5
        P21IM2          P2EXI0.6
        P21IM3          P2EXI0.7

        P22IM0          P2EXI1.0
        P22IM1          P2EXI1.1
        P22IM2          P2EXI1.2
        P22IM3          P2EXI1.3
        P23IM0          P2EXI1.4
        P23IM1          P2EXI1.5
        P23IM2          P2EXI1.6
        P23IM3          P2EXI1.7

        P20IE           P2IE.0
        P21IE           P2IE.1
        P22IE           P2IE.2
        P23IE           P2IE.3

        P20IS           P2IS.0
        P21IS           P2IS.1
        P22IS           P2IS.2
        P23IS           P2IS.3

        P20IC           P2IC.0
        P21IC           P2IC.1
        P22IC           P2IC.2
        P23IC           P2IC.3

        P2INTU          P2IU.0

        P30IM0          P3EXI0.0
        P30IM1          P3EXI0.1
        P30IM2          P3EXI0.2
        P30IM3          P3EXI0.3
        P31IM0          P3EXI0.4
        P31IM1          P3EXI0.5
        P31IM2          P3EXI0.6
        P31IM3          P3EXI0.7

        P32IM0          P3EXI1.0
        P32IM1          P3EXI1.1
        P32IM2          P3EXI1.2
        P32IM3          P3EXI1.3
        P33IM0          P3EXI1.4
        P33IM1          P3EXI1.5
        P33IM2          P3EXI1.6
        P33IM3          P3EXI1.7

        P34IM0          P3EXI2.0
        P34IM1          P3EXI2.1
        P34IM2          P3EXI2.2
        P34IM3          P3EXI2.3
        P35IM0          P3EXI2.4
        P35IM1          P3EXI2.5
        P35IM2          P3EXI2.6
        P35IM3          P3EXI2.7

        P36IM0          P3EXI3.0
        P36IM1          P3EXI3.1
        P36IM2          P3EXI3.2
        P36IM3          P3EXI3.3
        P37IM0          P3EXI3.4
        P37IM1          P3EXI3.5
        P37IM2          P3EXI3.6
        P37IM3          P3EXI3.7

        P30IE           P3IE.0
        P31IE           P3IE.1
        P32IE           P3IE.2
        P33IE           P3IE.3
        P34IE           P3IE.4
        P35IE           P3IE.5
        P36IE           P3IE.6
        P37IE           P3IE.7

        P30IS           P3IS.0
        P31IS           P3IS.1
        P32IS           P3IS.2
        P33IS           P3IS.3
        P34IS           P3IS.4
        P35IS           P3IS.5
        P36IS           P3IS.6
        P37IS           P3IS.7

        P30IC           P3IC.0
        P31IC           P3IC.1
        P32IC           P3IC.2
        P33IC           P3IC.3
        P34IC           P3IC.4
        P35IC           P3IC.5
        P36IC           P3IC.6
        P37IC           P3IC.7

        P3INTU          P3IU.0

        P40IM0          P4EXI0.0
        P40IM1          P4EXI0.1
        P40IM2          P4EXI0.2
        P40IM3          P4EXI0.3
        P41IM0          P4EXI0.4
        P41IM1          P4EXI0.5
        P41IM2          P4EXI0.6
        P41IM3          P4EXI0.7

        P42IM0          P4EXI1.0
        P42IM1          P4EXI1.1
        P42IM2          P4EXI1.2
        P42IM3          P4EXI1.3
        P43IM0          P4EXI1.4
        P43IM1          P4EXI1.5
        P43IM2          P4EXI1.6
        P43IM3          P4EXI1.7

        P44IM0          P4EXI2.0
        P44IM1          P4EXI2.1
        P44IM2          P4EXI2.2
        P44IM3          P4EXI2.3
        P45IM0          P4EXI2.4
        P45IM1          P4EXI2.5
        P45IM2          P4EXI2.6
        P45IM3          P4EXI2.7

        P46IM0          P4EXI3.0
        P46IM1          P4EXI3.1
        P46IM2          P4EXI3.2
        P46IM3          P4EXI3.3
        P47IM0          P4EXI3.4
        P47IM1          P4EXI3.5
        P47IM2          P4EXI3.6
        P47IM3          P4EXI3.7

        P40IE           P4IE.0
        P41IE           P4IE.1
        P42IE           P4IE.2
        P43IE           P4IE.3
        P44IE           P4IE.4
        P45IE           P4IE.5
        P46IE           P4IE.6
        P47IE           P4IE.7

        P40IS           P4IS.0
        P41IS           P4IS.1
        P42IS           P4IS.2
        P43IS           P4IS.3
        P44IS           P4IS.4
        P45IS           P4IS.5
        P46IS           P4IS.6
        P47IS           P4IS.7

        P40IC           P4IC.0
        P41IC           P4IC.1
        P42IC           P4IC.2
        P43IC           P4IC.3
        P44IC           P4IC.4
        P45IC           P4IC.5
        P46IC           P4IC.6
        P47IC           P4IC.7

        P4INTU          P4IU.0

        P50IM0          P5EXI0.0
        P50IM1          P5EXI0.1
        P50IM2          P5EXI0.2
        P50IM3          P5EXI0.3
        P51IM0          P5EXI0.4
        P51IM1          P5EXI0.5
        P51IM2          P5EXI0.6
        P51IM3          P5EXI0.7

        P52IM0          P5EXI1.0
        P52IM1          P5EXI1.1
        P52IM2          P5EXI1.2
        P52IM3          P5EXI1.3
        P53IM0          P5EXI1.4
        P53IM1          P5EXI1.5
        P53IM2          P5EXI1.6
        P53IM3          P5EXI1.7

        P54IM0          P5EXI2.0
        P54IM1          P5EXI2.1
        P54IM2          P5EXI2.2
        P54IM3          P5EXI2.3
        P55IM0          P5EXI2.4
        P55IM1          P5EXI2.5
        P55IM2          P5EXI2.6
        P55IM3          P5EXI2.7

        P56IM0          P5EXI3.0
        P56IM1          P5EXI3.1
        P56IM2          P5EXI3.2
        P56IM3          P5EXI3.3
        P57IM0          P5EXI3.4
        P57IM1          P5EXI3.5
        P57IM2          P5EXI3.6
        P57IM3          P5EXI3.7

        P50IE           P5IE.0
        P51IE           P5IE.1
        P52IE           P5IE.2
        P53IE           P5IE.3
        P54IE           P5IE.4
        P55IE           P5IE.5
        P56IE           P5IE.6
        P57IE           P5IE.7

        P50IS           P5IS.0
        P51IS           P5IS.1
        P52IS           P5IS.2
        P53IS           P5IS.3
        P54IS           P5IS.4
        P55IS           P5IS.5
        P56IS           P5IS.6
        P57IS           P5IS.7

        P50IC           P5IC.0
        P51IC           P5IC.1
        P52IC           P5IC.2
        P53IC           P5IC.3
        P54IC           P5IC.4
        P55IC           P5IC.5
        P56IC           P5IC.6
        P57IC           P5IC.7

        P5INTU          P5IU.0

        P70IM0          P7EXI0.0
        P70IM1          P7EXI0.1
        P70IM2          P7EXI0.2
        P70IM3          P7EXI0.3
        P71IM0          P7EXI0.4
        P71IM1          P7EXI0.5
        P71IM2          P7EXI0.6
        P71IM3          P7EXI0.7

        P72IM0          P7EXI1.0
        P72IM1          P7EXI1.1
        P72IM2          P7EXI1.2
        P72IM3          P7EXI1.3
        P73IM0          P7EXI1.4
        P73IM1          P7EXI1.5
        P73IM2          P7EXI1.6
        P73IM3          P7EXI1.7

        P74IM0          P7EXI2.0
        P74IM1          P7EXI2.1
        P74IM2          P7EXI2.2
        P74IM3          P7EXI2.3
        P75IM0          P7EXI2.4
        P75IM1          P7EXI2.5
        P75IM2          P7EXI2.6
        P75IM3          P7EXI2.7

        P76IM0          P7EXI3.0
        P76IM1          P7EXI3.1
        P76IM2          P7EXI3.2
        P76IM3          P7EXI3.3
        P77IM0          P7EXI3.4
        P77IM1          P7EXI3.5
        P77IM2          P7EXI3.6
        P77IM3          P7EXI3.7

        P70IE           P7IE.0
        P71IE           P7IE.1
        P72IE           P7IE.2
        P73IE           P7IE.3
        P74IE           P7IE.4
        P75IE           P7IE.5
        P76IE           P7IE.6
        P77IE           P7IE.7

        P70IS           P7IS.0
        P71IS           P7IS.1
        P72IS           P7IS.2
        P73IS           P7IS.3
        P74IS           P7IS.4
        P75IS           P7IS.5
        P76IS           P7IS.6
        P77IS           P7IS.7

        P70IC           P7IC.0
        P71IC           P7IC.1
        P72IC           P7IC.2
        P73IC           P7IC.3
        P74IC           P7IC.4
        P75IC           P7IC.5
        P76IC           P7IC.6
        P77IC           P7IC.7

        P7INTU          P7IU.0

        P80IM0          P8EXI0.0
        P80IM1          P8EXI0.1
        P80IM2          P8EXI0.2
        P80IM3          P8EXI0.3
        P81IM0          P8EXI0.4
        P81IM1          P8EXI0.5
        P81IM2          P8EXI0.6
        P81IM3          P8EXI0.7

        P82IM0          P8EXI1.0
        P82IM1          P8EXI1.1
        P82IM2          P8EXI1.2
        P82IM3          P8EXI1.3
        P83IM0          P8EXI1.4
        P83IM1          P8EXI1.5
        P83IM2          P8EXI1.6
        P83IM3          P8EXI1.7

        P84IM0          P8EXI2.0
        P84IM1          P8EXI2.1
        P84IM2          P8EXI2.2
        P84IM3          P8EXI2.3
        P85IM0          P8EXI2.4
        P85IM1          P8EXI2.5
        P85IM2          P8EXI2.6
        P85IM3          P8EXI2.7

        P86IM0          P8EXI3.0
        P86IM1          P8EXI3.1
        P86IM2          P8EXI3.2
        P86IM3          P8EXI3.3
        P87IM0          P8EXI3.4
        P87IM1          P8EXI3.5
        P87IM2          P8EXI3.6
        P87IM3          P8EXI3.7

        P80IE           P8IE.0
        P81IE           P8IE.1
        P82IE           P8IE.2
        P83IE           P8IE.3
        P84IE           P8IE.4
        P85IE           P8IE.5
        P86IE           P8IE.6
        P87IE           P8IE.7

        P80IS           P8IS.0
        P81IS           P8IS.1
        P82IS           P8IS.2
        P83IS           P8IS.3
        P84IS           P8IS.4
        P85IS           P8IS.5
        P86IS           P8IS.6
        P87IS           P8IS.7

        P80IC           P8IC.0
        P81IC           P8IC.1
        P82IC           P8IC.2
        P83IC           P8IC.3
        P84IC           P8IC.4
        P85IC           P8IC.5
        P86IC           P8IC.6
        P87IC           P8IC.7

        P8INTU          P8IU.0

        CMSK0           COMMSK0L.0
        CMSK1           COMMSK0L.1
        CMSK2           COMMSK0L.2
        CMSK3           COMMSK0L.3
        CMSK4           COMMSK0L.4
        CMSK5           COMMSK0L.5
        CMSK6           COMMSK0L.6
        CMSK7           COMMSK0L.7

        CMSK8           COMMSK0H.0
        CMSK9           COMMSK0H.1
        CMSK10          COMMSK0H.2
        CMSK11          COMMSK0H.3
        CMSK12          COMMSK0H.4
        CMSK13          COMMSK0H.5
        CMSK14          COMMSK0H.6
        CMSK15          COMMSK0H.7

        CMSK16          COMMSK1L.0
        CMSK17          COMMSK1L.1
        CMSK18          COMMSK1L.2
        CMSK19          COMMSK1L.3
        CMSK20          COMMSK1L.4
        CMSK21          COMMSK1L.5
        CMSK22          COMMSK1L.6
        CMSK23          COMMSK1L.7

        CMSK24          COMMSK1H.0
        CMSK25          COMMSK1H.1
        CMSK26          COMMSK1H.2
        CMSK27          COMMSK1H.3
        CMSK28          COMMSK1H.4
        CMSK29          COMMSK1H.5
        CMSK30          COMMSK1H.6
        CMSK31          COMMSK1H.7



;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;       SFR ACCESS ATTRIBUTE DEFINITIONS
;
;       - SYNTAX -
;       #ACCESS
;  Data_Address:| Access_Unit |        Bit_Pattern        |
;   Address     |   Word/Byte |   Read      |      Write  |
;   .......         .........     ....             .....
;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#ACCESS
    DSR             :   --RW    0000_1111B  0000_1111B
    FCON0           :   RWRW    0001_1111B  0001_1111B
    FCON1           :   --RW    1101_0111B  1101_0111B
    FCON2           :   RWRW    0001_1011B  0001_1011B
    FCON3           :   --RW    0000_0011B  0000_0011B
    FCON4           :   RWRW    1111_1111B  1111_1111B
    FCON5           :   --RW    0000_0001B  0000_0001B
    STPACP          :   ---W    1111_1111B  1111_1111B
    SBYCON          :   --RW    0000_1111B  0000_1111B
    FSTAT           :   --R-    1100_0100B  -         
    RSTAT           :   --RW    0001_1111B  0001_1111B
    WDTCON          :   --RW    1111_1111B  1111_1111B
    WDTMOD          :   --RW    1000_0011B  1000_0011B
    IE0             :   RWRW    -           -         
    IE1             :   --RW    1111_1111B  1111_1111B
    IE2             :   RWRW    1111_1011B  1111_1011B
    IE3             :   --RW    1110_0011B  1110_0011B
    IE4             :   RWRW    0011_0011B  0011_0011B
    IE5             :   --RW    1111_1111B  1111_1111B
    IE6             :   RWRW    1011_1111B  1011_1111B
    IE7             :   --RW    1111_1111B  1111_1111B
    IRQ0            :   RWRW    0000_0001B  0000_0001B
    IRQ1            :   --RW    1111_1111B  1111_1111B
    IRQ2            :   RWRW    1111_1011B  1111_1011B
    IRQ3            :   --RW    1110_0011B  1110_0011B
    IRQ4            :   RWRW    0011_0011B  0011_0011B
    IRQ5            :   --RW    1111_1111B  1111_1111B
    IRQ6            :   RWRW    1011_1111B  1011_1111B
    IRQ7            :   --RW    1111_1111B  1111_1111B
    ILENL           :   RWRW    0000_0001B  0000_0001B
    ILENH           :   --RW    -           -         
    CILL            :   RWRW    1000_1111B  1000_1111B
    CILH            :   --RW    -           -         
    ILC1L           :   RWRW    1111_1111B  1111_1111B
    ILC1H           :   --RW    1111_1111B  1111_1111B
    ILC2L           :   RWRW    1100_1111B  1100_1111B
    ILC2H           :   --RW    1111_1111B  1111_1111B
    ILC3L           :   RWRW    0000_1111B  0000_1111B
    ILC3H           :   --RW    1111_1100B  1111_1100B
    ILC4L           :   RWRW    0000_1111B  0000_1111B
    ILC4H           :   --RW    0000_1111B  0000_1111B
    ILC5L           :   RWRW    1111_1111B  1111_1111B
    ILC5H           :   --RW    1111_1111B  1111_1111B
    ILC6L           :   RWRW    1111_1111B  1111_1111B
    ILC6H           :   --RW    1100_1111B  1100_1111B
    ILC7L           :   RWRW    1111_1111B  1111_1111B
    ILC7H           :   --RW    1111_1111B  1111_1111B
    EXICON0         :   RWRW    1111_1111B  1111_1111B
    EXICON1         :   --RW    1111_1111B  1111_1111B
    EXICON2         :   RWRW    1111_1111B  1111_1111B
    EXICON3         :   --RW    1111_1111B  1111_1111B
    EXI0SEL         :   RWRW    1111_1111B  1111_1111B
    EXI1SEL         :   --RW    1111_1111B  1111_1111B
    EXI2SEL         :   RWRW    1111_1111B  1111_1111B
    EXI3SEL         :   --RW    1111_1111B  1111_1111B
    EXI4SEL         :   RWRW    1111_1111B  1111_1111B
    EXI5SEL         :   --RW    1111_1111B  1111_1111B
    EXI6SEL         :   RWRW    1111_1111B  1111_1111B
    EXI7SEL         :   --RW    1111_1111B  1111_1111B
    LTBR            :   --RW    1111_1111B  1111_1111B
    LTBADJL         :   RWRW    1111_1111B  1111_1111B
    LTBADJH         :   --RW    0000_0111B  0000_0111B
    LTBINTL         :   RWRW    0111_0111B  0111_0111B
    LTBINTH         :   --RW    0000_0111B  0000_0111B
    PMCON           :   --RW    0000_0111B  0000_0111B
    BLKCON0         :   RWRW    1111_1111B  1111_1111B
    BLKCON1         :   --RW    1000_1111B  1000_1111B
    BLKCON2         :   RWRW    1111_1111B  1111_1111B
    BLKCON3         :   --RW    1110_0001B  1110_0001B
    BLKCON4         :   RWRW    0100_0011B  0100_0011B
    BLKCON5         :   --RW    1100_0111B  1100_0111B
    T1KCRL          :   RWRW    1111_1111B  1111_1111B
    T1KCRH          :   --RW    0001_1111B  0001_1111B
    T1KCON          :   --RW    0000_1111B  0000_1111B
    FLASHAL         :   RWRW    1111_1111B  1111_1111B
    FLASHAH         :   --RW    1111_1111B  1111_1111B
    FLASHDL         :   RWRW    1111_1111B  1111_1111B
    FLASHDH         :   --RW    1111_1111B  1111_1111B
    FLASHCON        :   ---W    0000_0011B  0000_0011B
    FLASHACP        :   ---W    1111_1111B  1111_1111B
    FLASHSEG        :   --RW    0000_0111B  0000_0111B
    FLASHSLF        :   --RW    0000_0001B  0000_0001B
    REMAPADD        :   --RW    1111_1111B  1111_1111B
    TST0PDCT        :   --RW    0000_0001B  0000_0001B
    BIASCON         :   RWRW    1111_1111B  1111_1111B
    DSPCNT          :   --RW    0001_1111B  0001_1111B
    DSPMOD0         :   RWRW    0001_1111B  0001_1111B
    DSPCON0         :   RWRW    0000_0011B  0000_0011B
    DSPCON1         :   --RW    0001_0101B  0001_0101B
    DSPCON2         :   RWRW    0001_1111B  0001_1111B
    DSPCON3         :   --RW    0000_0001B  0000_0001B
    DSPOFST         :   RWRW    0001_1111B  0001_1111B
    DSPBUF          :   --RW    0000_0001B  0000_0001B
    DSPCLK          :   --RW    0111_1111B  0111_1111B
    LCDISET         :   RWRW    0000_0001B  0000_0001B
    LCDISTAT        :   --RW    0000_0001B  0000_0001B
    DSPR000         :   RWRW    1111_1111B  1111_1111B
    DSPR001         :   --RW    1111_1111B  1111_1111B
    DSPR002         :   RWRW    1111_1111B  1111_1111B
    DSPR003         :   --RW    1111_1111B  1111_1111B
    DSPR004         :   RWRW    1111_1111B  1111_1111B
    DSPR005         :   --RW    1111_1111B  1111_1111B
    DSPR006         :   RWRW    1111_1111B  1111_1111B
    DSPR007         :   --RW    1111_1111B  1111_1111B
    DSPR008         :   RWRW    1111_1111B  1111_1111B
    DSPR009         :   --RW    1111_1111B  1111_1111B
    DSPR00A         :   RWRW    1111_1111B  1111_1111B
    DSPR00B         :   --RW    1111_1111B  1111_1111B
    DSPR00C         :   RWRW    1111_1111B  1111_1111B
    DSPR00D         :   --RW    1111_1111B  1111_1111B
    DSPR00E         :   RWRW    1111_1111B  1111_1111B
    DSPR00F         :   --RW    1111_1111B  1111_1111B
    DSPR010         :   RWRW    1111_1111B  1111_1111B
    DSPR011         :   --RW    1111_1111B  1111_1111B
    DSPR012         :   RWRW    1111_1111B  1111_1111B
    DSPR013         :   --RW    1111_1111B  1111_1111B
    DSPR014         :   RWRW    1111_1111B  1111_1111B
    DSPR015         :   --RW    1111_1111B  1111_1111B
    DSPR016         :   RWRW    1111_1111B  1111_1111B
    DSPR017         :   --RW    1111_1111B  1111_1111B
    DSPR018         :   RWRW    1111_1111B  1111_1111B
    DSPR019         :   --RW    1111_1111B  1111_1111B
    DSPR01A         :   RWRW    1111_1111B  1111_1111B
    DSPR01B         :   --RW    1111_1111B  1111_1111B
    DSPR01C         :   RWRW    1111_1111B  1111_1111B
    DSPR01D         :   --RW    1111_1111B  1111_1111B
    DSPR01E         :   RWRW    1111_1111B  1111_1111B
    DSPR01F         :   --RW    1111_1111B  1111_1111B
    DSPR020         :   RWRW    1111_1111B  1111_1111B
    DSPR021         :   --RW    1111_1111B  1111_1111B
    DSPR022         :   RWRW    1111_1111B  1111_1111B
    DSPR023         :   --RW    1111_1111B  1111_1111B
    DSPR024         :   RWRW    1111_1111B  1111_1111B
    DSPR025         :   --RW    1111_1111B  1111_1111B
    DSPR026         :   RWRW    1111_1111B  1111_1111B
    DSPR027         :   --RW    1111_1111B  1111_1111B
    DSPR028         :   RWRW    1111_1111B  1111_1111B
    DSPR029         :   --RW    1111_1111B  1111_1111B
    DSPR02A         :   RWRW    1111_1111B  1111_1111B
    DSPR02B         :   --RW    1111_1111B  1111_1111B
    DSPR02C         :   RWRW    1111_1111B  1111_1111B
    DSPR02D         :   --RW    1111_1111B  1111_1111B
    DSPR02E         :   RWRW    1111_1111B  1111_1111B
    DSPR02F         :   --RW    1111_1111B  1111_1111B
    DSPR030         :   RWRW    1111_1111B  1111_1111B
    DSPR031         :   --RW    1111_1111B  1111_1111B
    DSPR032         :   RWRW    1111_1111B  1111_1111B
    DSPR033         :   --RW    1111_1111B  1111_1111B
    DSPR034         :   RWRW    1111_1111B  1111_1111B
    DSPR035         :   --RW    1111_1111B  1111_1111B
    DSPR036         :   RWRW    1111_1111B  1111_1111B
    DSPR037         :   --RW    1111_1111B  1111_1111B
    DSPR038         :   RWRW    1111_1111B  1111_1111B
    DSPR039         :   --RW    1111_1111B  1111_1111B
    DSPR03A         :   RWRW    1111_1111B  1111_1111B
    DSPR03B         :   --RW    1111_1111B  1111_1111B
    DSPR03C         :   RWRW    1111_1111B  1111_1111B
    DSPR03D         :   --RW    1111_1111B  1111_1111B
    DSPR03E         :   RWRW    1111_1111B  1111_1111B
    DSPR03F         :   --RW    1111_1111B  1111_1111B
    DSPR040         :   RWRW    1111_1111B  1111_1111B
    DSPR041         :   --RW    1111_1111B  1111_1111B
    DSPR042         :   RWRW    1111_1111B  1111_1111B
    DSPR043         :   --RW    1111_1111B  1111_1111B
    DSPR044         :   RWRW    1111_1111B  1111_1111B
    DSPR045         :   --RW    1111_1111B  1111_1111B
    DSPR046         :   RWRW    1111_1111B  1111_1111B
    DSPR047         :   --RW    1111_1111B  1111_1111B
    DSPR048         :   RWRW    1111_1111B  1111_1111B
    DSPR049         :   --RW    1111_1111B  1111_1111B
    DSPR04A         :   RWRW    1111_1111B  1111_1111B
    DSPR04B         :   --RW    1111_1111B  1111_1111B
    DSPR04C         :   RWRW    1111_1111B  1111_1111B
    DSPR04D         :   --RW    1111_1111B  1111_1111B
    DSPR04E         :   RWRW    1111_1111B  1111_1111B
    DSPR04F         :   --RW    1111_1111B  1111_1111B
    DSPR050         :   RWRW    1111_1111B  1111_1111B
    DSPR051         :   --RW    1111_1111B  1111_1111B
    DSPR052         :   RWRW    1111_1111B  1111_1111B
    DSPR053         :   --RW    1111_1111B  1111_1111B
    DSPR054         :   RWRW    1111_1111B  1111_1111B
    DSPR055         :   --RW    1111_1111B  1111_1111B
    DSPR056         :   RWRW    1111_1111B  1111_1111B
    DSPR057         :   --RW    1111_1111B  1111_1111B
    DSPR058         :   RWRW    1111_1111B  1111_1111B
    DSPR059         :   --RW    1111_1111B  1111_1111B
    DSPR05A         :   RWRW    1111_1111B  1111_1111B
    DSPR05B         :   --RW    1111_1111B  1111_1111B
    DSPR05C         :   RWRW    1111_1111B  1111_1111B
    DSPR05D         :   --RW    1111_1111B  1111_1111B
    DSPR05E         :   RWRW    1111_1111B  1111_1111B
    DSPR05F         :   --RW    1111_1111B  1111_1111B
    DSPR060         :   RWRW    1111_1111B  1111_1111B
    DSPR061         :   --RW    1111_1111B  1111_1111B
    DSPR062         :   RWRW    1111_1111B  1111_1111B
    DSPR063         :   --RW    1111_1111B  1111_1111B
    DSPR064         :   RWRW    1111_1111B  1111_1111B
    DSPR065         :   --RW    1111_1111B  1111_1111B
    DSPR066         :   RWRW    1111_1111B  1111_1111B
    DSPR067         :   --RW    1111_1111B  1111_1111B
    DSPR068         :   RWRW    1111_1111B  1111_1111B
    DSPR069         :   --RW    1111_1111B  1111_1111B
    DSPR06A         :   RWRW    1111_1111B  1111_1111B
    DSPR06B         :   --RW    1111_1111B  1111_1111B
    DSPR06C         :   RWRW    1111_1111B  1111_1111B
    DSPR06D         :   --RW    1111_1111B  1111_1111B
    DSPR06E         :   RWRW    1111_1111B  1111_1111B
    DSPR06F         :   --RW    1111_1111B  1111_1111B
    DSPR070         :   RWRW    1111_1111B  1111_1111B
    DSPR071         :   --RW    1111_1111B  1111_1111B
    DSPR072         :   RWRW    1111_1111B  1111_1111B
    DSPR073         :   --RW    1111_1111B  1111_1111B
    DSPR074         :   RWRW    1111_1111B  1111_1111B
    DSPR075         :   --RW    1111_1111B  1111_1111B
    DSPR076         :   RWRW    1111_1111B  1111_1111B
    DSPR077         :   --RW    1111_1111B  1111_1111B
    DSPR078         :   RWRW    1111_1111B  1111_1111B
    DSPR079         :   --RW    1111_1111B  1111_1111B
    DSPR07A         :   RWRW    1111_1111B  1111_1111B
    DSPR07B         :   --RW    1111_1111B  1111_1111B
    DSPR07C         :   RWRW    1111_1111B  1111_1111B
    DSPR07D         :   --RW    1111_1111B  1111_1111B
    DSPR07E         :   RWRW    1111_1111B  1111_1111B
    DSPR07F         :   --RW    1111_1111B  1111_1111B
    DSPR080         :   RWRW    1111_1111B  1111_1111B
    DSPR081         :   --RW    1111_1111B  1111_1111B
    DSPR082         :   RWRW    1111_1111B  1111_1111B
    DSPR083         :   --RW    1111_1111B  1111_1111B
    DSPR084         :   RWRW    1111_1111B  1111_1111B
    DSPR085         :   --RW    1111_1111B  1111_1111B
    DSPR086         :   RWRW    1111_1111B  1111_1111B
    DSPR087         :   --RW    1111_1111B  1111_1111B
    DSPR088         :   RWRW    1111_1111B  1111_1111B
    DSPR089         :   --RW    1111_1111B  1111_1111B
    DSPR08A         :   RWRW    1111_1111B  1111_1111B
    DSPR08B         :   --RW    1111_1111B  1111_1111B
    DSPR08C         :   RWRW    1111_1111B  1111_1111B
    DSPR08D         :   --RW    1111_1111B  1111_1111B
    DSPR08E         :   RWRW    1111_1111B  1111_1111B
    DSPR08F         :   --RW    1111_1111B  1111_1111B
    DSPR090         :   RWRW    1111_1111B  1111_1111B
    DSPR091         :   --RW    1111_1111B  1111_1111B
    DSPR092         :   RWRW    1111_1111B  1111_1111B
    DSPR093         :   --RW    1111_1111B  1111_1111B
    DSPR094         :   RWRW    1111_1111B  1111_1111B
    DSPR095         :   --RW    1111_1111B  1111_1111B
    DSPR096         :   RWRW    1111_1111B  1111_1111B
    DSPR097         :   --RW    1111_1111B  1111_1111B
    DSPR098         :   RWRW    1111_1111B  1111_1111B
    DSPR099         :   --RW    1111_1111B  1111_1111B
    DSPR09A         :   RWRW    1111_1111B  1111_1111B
    DSPR09B         :   --RW    1111_1111B  1111_1111B
    DSPR09C         :   RWRW    1111_1111B  1111_1111B
    DSPR09D         :   --RW    1111_1111B  1111_1111B
    DSPR09E         :   RWRW    1111_1111B  1111_1111B
    DSPR09F         :   --RW    1111_1111B  1111_1111B
    DSPR0A0         :   RWRW    1111_1111B  1111_1111B
    DSPR0A1         :   --RW    1111_1111B  1111_1111B
    DSPR0A2         :   RWRW    1111_1111B  1111_1111B
    DSPR0A3         :   --RW    1111_1111B  1111_1111B
    DSPR0A4         :   RWRW    1111_1111B  1111_1111B
    DSPR0A5         :   --RW    1111_1111B  1111_1111B
    DSPR0A6         :   RWRW    1111_1111B  1111_1111B
    DSPR0A7         :   --RW    1111_1111B  1111_1111B
    DSPR0A8         :   RWRW    1111_1111B  1111_1111B
    DSPR0A9         :   --RW    1111_1111B  1111_1111B
    DSPR0AA         :   RWRW    1111_1111B  1111_1111B
    DSPR0AB         :   --RW    1111_1111B  1111_1111B
    DSPR0AC         :   RWRW    1111_1111B  1111_1111B
    DSPR0AD         :   --RW    1111_1111B  1111_1111B
    DSPR0AE         :   RWRW    1111_1111B  1111_1111B
    DSPR0AF         :   --RW    1111_1111B  1111_1111B
    DSPR0B0         :   RWRW    1111_1111B  1111_1111B
    DSPR0B1         :   --RW    1111_1111B  1111_1111B
    DSPR0B2         :   RWRW    1111_1111B  1111_1111B
    DSPR0B3         :   --RW    1111_1111B  1111_1111B
    DSPR0B4         :   RWRW    1111_1111B  1111_1111B
    DSPR0B5         :   --RW    1111_1111B  1111_1111B
    DSPR0B6         :   RWRW    1111_1111B  1111_1111B
    DSPR0B7         :   --RW    1111_1111B  1111_1111B
    DSPR0B8         :   RWRW    1111_1111B  1111_1111B
    DSPR0B9         :   --RW    1111_1111B  1111_1111B
    DSPR0BA         :   RWRW    1111_1111B  1111_1111B
    DSPR0BB         :   --RW    1111_1111B  1111_1111B
    DSPR0BC         :   RWRW    1111_1111B  1111_1111B
    DSPR0BD         :   --RW    1111_1111B  1111_1111B
    DSPR0BE         :   RWRW    1111_1111B  1111_1111B
    DSPR0BF         :   --RW    1111_1111B  1111_1111B
    DSPR0C0         :   RWRW    1111_1111B  1111_1111B
    DSPR0C1         :   --RW    1111_1111B  1111_1111B
    DSPR0C2         :   RWRW    1111_1111B  1111_1111B
    DSPR0C3         :   --RW    1111_1111B  1111_1111B
    DSPR0C4         :   RWRW    1111_1111B  1111_1111B
    DSPR0C5         :   --RW    1111_1111B  1111_1111B
    DSPR0C6         :   RWRW    1111_1111B  1111_1111B
    DSPR0C7         :   --RW    1111_1111B  1111_1111B
    DSPR0C8         :   RWRW    1111_1111B  1111_1111B
    DSPR0C9         :   --RW    1111_1111B  1111_1111B
    DSPR0CA         :   RWRW    1111_1111B  1111_1111B
    DSPR0CB         :   --RW    1111_1111B  1111_1111B
    DSPR0CC         :   RWRW    1111_1111B  1111_1111B
    DSPR0CD         :   --RW    1111_1111B  1111_1111B
    DSPR0CE         :   RWRW    1111_1111B  1111_1111B
    DSPR0CF         :   --RW    1111_1111B  1111_1111B
    DSPR0D0         :   RWRW    1111_1111B  1111_1111B
    DSPR0D1         :   --RW    1111_1111B  1111_1111B
    DSPR0D2         :   RWRW    1111_1111B  1111_1111B
    DSPR0D3         :   --RW    1111_1111B  1111_1111B
    DSPR0D4         :   RWRW    1111_1111B  1111_1111B
    DSPR0D5         :   --RW    1111_1111B  1111_1111B
    DSPR0D6         :   RWRW    1111_1111B  1111_1111B
    DSPR0D7         :   --RW    1111_1111B  1111_1111B
    DSPR0D8         :   RWRW    1111_1111B  1111_1111B
    DSPR0D9         :   --RW    1111_1111B  1111_1111B
    DSPR0DA         :   RWRW    1111_1111B  1111_1111B
    DSPR0DB         :   --RW    1111_1111B  1111_1111B
    DSPR0DC         :   RWRW    1111_1111B  1111_1111B
    DSPR0DD         :   --RW    1111_1111B  1111_1111B
    DSPR0DE         :   RWRW    1111_1111B  1111_1111B
    DSPR0DF         :   --RW    1111_1111B  1111_1111B
    DSPR0E0         :   RWRW    1111_1111B  1111_1111B
    DSPR0E1         :   --RW    1111_1111B  1111_1111B
    DSPR0E2         :   RWRW    1111_1111B  1111_1111B
    DSPR0E3         :   --RW    1111_1111B  1111_1111B
    DSPR0E4         :   RWRW    1111_1111B  1111_1111B
    DSPR0E5         :   --RW    1111_1111B  1111_1111B
    DSPR0E6         :   RWRW    1111_1111B  1111_1111B
    DSPR0E7         :   --RW    1111_1111B  1111_1111B
    DSPR0E8         :   RWRW    1111_1111B  1111_1111B
    DSPR0E9         :   --RW    1111_1111B  1111_1111B
    DSPR0EA         :   RWRW    1111_1111B  1111_1111B
    DSPR0EB         :   --RW    1111_1111B  1111_1111B
    DSPR0EC         :   RWRW    1111_1111B  1111_1111B
    DSPR0ED         :   --RW    1111_1111B  1111_1111B
    DSPR0EE         :   RWRW    1111_1111B  1111_1111B
    DSPR0EF         :   --RW    1111_1111B  1111_1111B
    DSPR0F0         :   RWRW    1111_1111B  1111_1111B
    DSPR0F1         :   --RW    1111_1111B  1111_1111B
    DSPR0F2         :   RWRW    1111_1111B  1111_1111B
    DSPR0F3         :   --RW    1111_1111B  1111_1111B
    DSPR0F4         :   RWRW    1111_1111B  1111_1111B
    DSPR0F5         :   --RW    1111_1111B  1111_1111B
    DSPR0F6         :   RWRW    1111_1111B  1111_1111B
    DSPR0F7         :   --RW    1111_1111B  1111_1111B
    DSPR0F8         :   RWRW    1111_1111B  1111_1111B
    DSPR0F9         :   --RW    1111_1111B  1111_1111B
    DSPR0FA         :   RWRW    1111_1111B  1111_1111B
    DSPR0FB         :   --RW    1111_1111B  1111_1111B
    DSPR0FC         :   RWRW    1111_1111B  1111_1111B
    DSPR0FD         :   --RW    1111_1111B  1111_1111B
    DSPR0FE         :   RWRW    1111_1111B  1111_1111B
    DSPR0FF         :   --RW    1111_1111B  1111_1111B
    P0D             :   --RW    0011_1111B  0011_1111B
    P0DIR           :   --RW    0011_1111B  0011_1111B
    P0CON0          :   RWRW    0011_1111B  0011_1111B
    P0CON1          :   --RW    0011_1111B  0011_1111B
    P0MOD0          :   RWRW    0011_1111B  0011_1111B
    P0MOD1          :   --RW    0011_1111B  0011_1111B
    P2D             :   --RW    0000_1111B  0000_1111B
    P2DIR           :   --RW    0000_1111B  0000_1111B
    P2CON0          :   RWRW    0000_1111B  0000_1111B
    P2CON1          :   --RW    0000_1111B  0000_1111B
    P2MOD0          :   RWRW    0000_1111B  0000_1111B
    P2MOD1          :   --RW    0000_1111B  0000_1111B
    P3D             :   --RW    1111_1111B  1111_1111B
    P3DIR           :   --RW    1111_1111B  1111_1111B
    P3CON0          :   RWRW    1111_1111B  1111_1111B
    P3CON1          :   --RW    1111_1111B  1111_1111B
    P3MOD0          :   RWRW    1111_1111B  1111_1111B
    P3MOD1          :   --RW    1111_1111B  1111_1111B
    P3MOD2          :   RWRW    1111_1111B  1111_1111B
    P3MOD3          :   --RW    -           -         
    P4D             :   --RW    1111_1111B  1111_1111B
    P4DIR           :   --RW    1111_1111B  1111_1111B
    P4CON0          :   RWRW    1111_1111B  1111_1111B
    P4CON1          :   --RW    1111_1111B  1111_1111B
    P4MOD0          :   RWRW    1111_1111B  1111_1111B
    P4MOD1          :   --RW    1111_1111B  1111_1111B
    P5D             :   --RW    1111_1111B  1111_1111B
    P5DIR           :   --RW    1111_1111B  1111_1111B
    P5CON0          :   RWRW    1111_1111B  1111_1111B
    P5CON1          :   --RW    1111_1111B  1111_1111B
    P5MOD0          :   RWRW    1111_1111B  1111_1111B
    P5MOD1          :   --RW    1111_1111B  1111_1111B
    P5MOD2          :   RWRW    1111_1111B  1111_1111B
    P5MOD3          :   --RW    -           -         
    P6D             :   --RW    0000_0011B  0000_0011B
    P6DIR           :   --RW    0000_0011B  0000_0011B
    P6CON0          :   RWRW    0000_0011B  0000_0011B
    P6CON1          :   --RW    0000_0011B  0000_0011B
    P6MOD0          :   RWRW    0000_0011B  0000_0011B
    P6MOD1          :   --RW    0000_0011B  0000_0011B
    P7D             :   --RW    1111_1111B  1111_1111B
    P7DIR           :   --RW    1111_1111B  1111_1111B
    P7CON0          :   RWRW    1111_1111B  1111_1111B
    P7CON1          :   --RW    1111_1111B  1111_1111B
    P7MOD0          :   RWRW    1111_1111B  1111_1111B
    P7MOD1          :   --RW    -           -         
    P8D             :   --RW    1111_1111B  1111_1111B
    P8DIR           :   --RW    1111_1111B  1111_1111B
    P8CON0          :   RWRW    1111_1111B  1111_1111B
    P8CON1          :   --RW    1111_1111B  1111_1111B
    P8MOD0          :   RWRW    1111_1111B  1111_1111B
    P8MOD1          :   --RW    -           -         
    TM0D            :   RWRW    1111_1111B  1111_1111B
    TM1D            :   --RW    1111_1111B  1111_1111B
    TM2D            :   RWRW    1111_1111B  1111_1111B
    TM3D            :   --RW    1111_1111B  1111_1111B
    TM4D            :   RWRW    1111_1111B  1111_1111B
    TM5D            :   --RW    1111_1111B  1111_1111B
    TM6D            :   RWRW    1111_1111B  1111_1111B
    TM7D            :   --RW    1111_1111B  1111_1111B
    TM0C            :   RWRW    1111_1111B  1111_1111B
    TM1C            :   --RW    1111_1111B  1111_1111B
    TM2C            :   RWRW    1111_1111B  1111_1111B
    TM3C            :   --RW    1111_1111B  1111_1111B
    TM4C            :   RWRW    1111_1111B  1111_1111B
    TM5C            :   --RW    1111_1111B  1111_1111B
    TM6C            :   RWRW    1111_1111B  1111_1111B
    TM7C            :   --RW    1111_1111B  1111_1111B
    TM0CON          :   RWRW    1111_1001B  1111_1001B
    TM1CON          :   --RW    1011_1001B  1011_1001B
    TM2CON          :   RWRW    1111_1011B  1111_1011B
    TM3CON          :   --RW    1011_1011B  1011_1011B
    TM4CON          :   RWRW    1111_1011B  1111_1011B
    TM5CON          :   --RW    1011_1011B  1011_1011B
    TM6CON          :   RWRW    1111_1011B  1111_1011B
    TM7CON          :   --RW    1011_1011B  1011_1011B
    TMSTR0          :   ---W    1111_1111B  1111_1111B
    TMSTP0          :   ---W    1111_1111B  1111_1111B
    TMSTAT0         :   --R-    1111_1111B  -         
    RTC0SEC         :   --RW    0111_1111B  0111_1111B
    RTC0MIN         :   --RW    0111_1111B  0111_1111B
    RTC0HOUR        :   --RW    0011_1111B  0011_1111B
    RTC0WEEK        :   --RW    0000_0111B  0000_0111B
    RTC0DAY         :   --RW    0011_1111B  0011_1111B
    RTC0MON         :   --RW    0001_1111B  0001_1111B
    RTC0YEAR        :   --RW    1111_1111B  1111_1111B
    RTC0CON         :   --RW    0000_0111B  0000_0111B
    AL10MIN         :   --RW    0111_1111B  0111_1111B
    AL10HOUR        :   --RW    0011_1111B  0011_1111B
    AL10DAY         :   --RW    0011_1111B  0011_1111B
    AL10MON         :   --RW    0001_1111B  0001_1111B
    RTC1SEC         :   --RW    0111_1111B  0111_1111B
    RTC1MIN         :   --RW    0111_1111B  0111_1111B
    RTC1HOUR        :   --RW    0011_1111B  0011_1111B
    RTC1WEEK        :   --RW    0000_0111B  0000_0111B
    RTC1DAY         :   --RW    0011_1111B  0011_1111B
    RTC1MON         :   --RW    0001_1111B  0001_1111B
    RTC1YEAR        :   --RW    1111_1111B  1111_1111B
    RTC1CON         :   --RW    0000_0111B  0000_0111B
    AL11MIN         :   --RW    0111_1111B  0111_1111B
    AL11HOUR        :   --RW    0011_1111B  0011_1111B
    AL11DAY         :   --RW    0011_1111B  0011_1111B
    AL11MON         :   --RW    0001_1111B  0001_1111B
    RTC2SEC         :   --RW    0111_1111B  0111_1111B
    RTC2MIN         :   --RW    0111_1111B  0111_1111B
    RTC2HOUR        :   --RW    0011_1111B  0011_1111B
    RTC2WEEK        :   --RW    0000_0111B  0000_0111B
    RTC2DAY         :   --RW    0011_1111B  0011_1111B
    RTC2MON         :   --RW    0001_1111B  0001_1111B
    RTC2YEAR        :   --RW    1111_1111B  1111_1111B
    RTC2CON         :   --RW    0000_0111B  0000_0111B
    AL12MIN         :   --RW    0111_1111B  0111_1111B
    AL12HOUR        :   --RW    0011_1111B  0011_1111B
    AL12DAY         :   --RW    0011_1111B  0011_1111B
    AL12MON         :   --RW    0001_1111B  0001_1111B
    0F400H          :   RW--    1111_1111B  1111_1111B
    0F401H          :   --RW    1111_1111B  1111_1111B
    0F402H          :   RW--    1111_1111B  1111_1111B
    0F403H          :   --RW    1111_1111B  1111_1111B
    0F404H          :   RW--    1111_1111B  1111_1111B
    0F405H          :   --RW    1111_1111B  1111_1111B
    0F406H          :   RW--    1111_1111B  1111_1111B
    0F407H          :   --RW    1111_1111B  1111_1111B
    0F408H          :   RW--    1111_1111B  1111_1111B
    0F409H          :   --RW    1111_1111B  1111_1111B
    FT0CON0         :   --RW    0010_1011B  0010_1011B
    FT0CON1         :   --RW    1111_0001B  1111_0001B
    FT0MODL         :   RWRW    1100_0011B  1100_0011B
    FT0MODH         :   --RW    0000_0001B  0000_0001B
    FT0CLKL         :   RWRW    0111_0011B  0111_0011B
    FT0CLKH         :   --RW    0000_0111B  0000_0111B
    FT0TRG0L        :   RWRW    0000_1111B  0000_1111B
    FT0TRG0H        :   --RW    1000_1111B  1000_1111B
    FT0TRG1L        :   RWRW    0011_0011B  0011_0011B
    FT0TRG1H        :   --RW    -           -         
    FT0INTEL        :   RWRW    0001_1111B  0001_1111B
    FT0INTEH        :   --RW    0000_0111B  0000_0111B
    FT0INTSL        :   R-R-    0011_1111B  -         
    0F41BH          :   --R-    -           -         
    FT0INTCL        :   -W-W    0011_1111B  0011_1111B
    FT0INTCH        :   ---W    1000_0000B  1000_0000B
    0F420H          :   RW--    1111_1111B  1111_1111B
    0F421H          :   --RW    1111_1111B  1111_1111B
    0F422H          :   RW--    1111_1111B  1111_1111B
    0F423H          :   --RW    1111_1111B  1111_1111B
    0F424H          :   RW--    1111_1111B  1111_1111B
    0F425H          :   --RW    1111_1111B  1111_1111B
    0F426H          :   RW--    1111_1111B  1111_1111B
    0F427H          :   --RW    1111_1111B  1111_1111B
    0F428H          :   RW--    1111_1111B  1111_1111B
    0F429H          :   --RW    1111_1111B  1111_1111B
    FT1CON0         :   --RW    0010_1011B  0010_1011B
    FT1CON1         :   --RW    1111_0001B  1111_0001B
    FT1MODL         :   RWRW    1100_0011B  1100_0011B
    FT1MODH         :   --RW    0000_0001B  0000_0001B
    FT1CLKL         :   RWRW    0111_0011B  0111_0011B
    FT1CLKH         :   --RW    0000_0111B  0000_0111B
    FT1TRG0L        :   RWRW    0000_1111B  0000_1111B
    FT1TRG0H        :   --RW    1000_1111B  1000_1111B
    FT1TRG1L        :   RWRW    0011_0011B  0011_0011B
    FT1TRG1H        :   --RW    -           -         
    FT1INTEL        :   RWRW    0001_1111B  0001_1111B
    FT1INTEH        :   --RW    0000_0111B  0000_0111B
    FT1INTSL        :   R-R-    0011_1111B  -         
    0F43BH          :   --R-    -           -         
    FT1INTCL        :   -W-W    0011_1111B  0011_1111B
    FT1INTCH        :   ---W    1000_0000B  1000_0000B
    0F440H          :   RW--    1111_1111B  1111_1111B
    0F441H          :   --RW    1111_1111B  1111_1111B
    0F442H          :   RW--    1111_1111B  1111_1111B
    0F443H          :   --RW    1111_1111B  1111_1111B
    0F444H          :   RW--    1111_1111B  1111_1111B
    0F445H          :   --RW    1111_1111B  1111_1111B
    0F446H          :   RW--    1111_1111B  1111_1111B
    0F447H          :   --RW    1111_1111B  1111_1111B
    0F448H          :   RW--    1111_1111B  1111_1111B
    0F449H          :   --RW    1111_1111B  1111_1111B
    FT2CON0         :   --RW    0010_1011B  0010_1011B
    FT2CON1         :   --RW    1111_0001B  1111_0001B
    FT2MODL         :   RWRW    1100_0011B  1100_0011B
    FT2MODH         :   --RW    0000_0001B  0000_0001B
    FT2CLKL         :   RWRW    0111_0011B  0111_0011B
    FT2CLKH         :   --RW    0000_0111B  0000_0111B
    FT2TRG0L        :   RWRW    0000_1111B  0000_1111B
    FT2TRG0H        :   --RW    1000_1111B  1000_1111B
    FT2TRG1L        :   RWRW    0011_0011B  0011_0011B
    FT2TRG1H        :   --RW    -           -         
    FT2INTEL        :   RWRW    0001_1111B  0001_1111B
    FT2INTEH        :   --RW    0000_0111B  0000_0111B
    FT2INTSL        :   R-R-    0011_1111B  -         
    0F45BH          :   --R-    -           -         
    FT2INTCL        :   -W-W    0011_1111B  0011_1111B
    FT2INTCH        :   ---W    1000_0000B  1000_0000B
    0F460H          :   RW--    1111_1111B  1111_1111B
    0F461H          :   --RW    1111_1111B  1111_1111B
    0F462H          :   RW--    1111_1111B  1111_1111B
    0F463H          :   --RW    1111_1111B  1111_1111B
    0F464H          :   RW--    1111_1111B  1111_1111B
    0F465H          :   --RW    1111_1111B  1111_1111B
    0F466H          :   RW--    1111_1111B  1111_1111B
    0F467H          :   --RW    1111_1111B  1111_1111B
    0F468H          :   RW--    1111_1111B  1111_1111B
    0F469H          :   --RW    1111_1111B  1111_1111B
    FT3CON0         :   RWRW    0010_1011B  0010_1011B
    FT3CON1         :   --RW    1111_0001B  1111_0001B
    FT3MODL         :   RWRW    1100_0011B  1100_0011B
    FT3MODH         :   --RW    0000_0001B  0000_0001B
    FT3CLKL         :   RWRW    0111_0011B  0111_0011B
    FT3CLKH         :   --RW    0000_0111B  0000_0111B
    FT3TRG0L        :   RWRW    0000_1111B  0000_1111B
    FT3TRG0H        :   --RW    1000_1111B  1000_1111B
    FT3TRG1L        :   RWRW    0011_0011B  0011_0011B
    FT3TRG1H        :   --RW    -           -         
    FT3INTEL        :   RWRW    0001_1111B  0001_1111B
    FT3INTEH        :   --RW    0000_0111B  0000_0111B
    FT3INTSL        :   R-R-    0011_1111B  -         
    0F47BH          :   --R-    -           -         
    FT3INTCL        :   -W-W    0011_1111B  0011_1111B
    FT3INTCH        :   ---W    1000_0000B  1000_0000B
    FTO0SL          :   RWRW    1000_0111B  1000_0111B
    FTO1SL          :   --RW    1000_0111B  1000_0111B
    FTO2SL          :   RWRW    1000_0111B  1000_0111B
    FTO3SL          :   --RW    1000_0111B  1000_0111B
    FTO4SL          :   RWRW    1000_0111B  1000_0111B
    FTO5SL          :   --RW    1000_0111B  1000_0111B
    FTO6SL          :   RWRW    1000_0111B  1000_0111B
    FTO7SL          :   --RW    1000_0111B  1000_0111B
    FTO8SL          :   RWRW    1000_0111B  1000_0111B
    FTO9SL          :   --RW    1000_0111B  1000_0111B
    FTOASL          :   RWRW    1000_0111B  1000_0111B
    FTOBSL          :   --RW    1000_0111B  1000_0111B
    FTOCSL          :   RWRW    1000_0111B  1000_0111B
    FTODSL          :   --RW    1000_0111B  1000_0111B
    FTOESL          :   RWRW    1000_0111B  1000_0111B
    FTOFSL          :   --RW    1000_0111B  1000_0111B
    SIO0BUFL        :   RWRW    1111_1111B  1111_1111B
    SIO0BUFH        :   --RW    1111_1111B  1111_1111B
    SIO0CON         :   --RW    0000_0001B  0000_0001B
    SIO0MOD0        :   RWRW    0000_1111B  0000_1111B
    SIO0MOD1        :   --RW    0011_0111B  0011_0111B
    UA0BUF          :   --RW    1111_1111B  1111_1111B
    UA0CON          :   --RW    0000_0001B  0000_0001B
    UA0MOD0         :   RWRW    0100_0110B  0100_0110B
    UA0MOD1         :   --RW    0111_1111B  0111_1111B
    UA0BRTL         :   RWRW    1111_1111B  1111_1111B
    UA0BRTH         :   --RW    0000_1111B  0000_1111B
    UA0STAT         :   --RW    0000_0111B  0000_0111B
    UA1BUF          :   --RW    1111_1111B  1111_1111B
    UA1CON          :   --RW    0000_0001B  0000_0001B
    UA1STAT         :   --RW    0000_1000B  0000_1000B
    I2F0SADL        :   RWRW    1111_1110B  1111_1110B
    I2F0SADH        :   --RW    0000_0111B  0000_0111B
    I2F0CTLL        :   RWRW    1111_1111B  1111_1111B
    I2F0CTLH        :   --RW    0011_1010B  0011_1010B
    I2F0SRL         :   RWRW    1110_1111B  1110_1111B
    I2F0SRH         :   --RW    0000_0010B  0000_0010B
    I2F0DRL         :   RWRW    1111_1111B  1111_1111B
    I2F0DRH         :   --RW    -           -         
    I2F0MONL        :   R-R-    0000_0011B  -         
    I2F0MONH        :   --R-    -           -         
    I2F0BCL         :   RWRW    0111_1111B  0111_1111B
    I2F0BCH         :   --RW    -           -         
    I2F0MODL        :   RWRW    0000_0001B  0000_0001B
    I2F0MODH        :   --RW    -           -         
    I2F0BSVL        :   RWRW    1111_1111B  1111_1111B
    I2F0BSVH        :   --RW    1111_1111B  1111_1111B
    I2F0BSBL        :   RWRW    1111_1111B  1111_1111B
    I2F0BSBH        :   --RW    1111_1111B  1111_1111B
    I2F0BFRL        :   RWRW    0000_1011B  0000_1011B
    I2F0BFRH        :   --RW    0001_1111B  0001_1111B
    I2F0BCTL        :   RWRW    0000_0001B  0000_0001B
    I2F0BCTH        :   --RW    -           -         
    I2F0BMKL        :   RWRW    0111_1101B  0111_1101B
    I2F0BMKH        :   --RW    -           -         
    I2F0BSRL        :   RWRW    0111_1101B  0111_1101B
    I2F0BSRH        :   --RW    -           -         
    I2F0BLVL        :   RWRW    0001_1111B  0001_1111B
    I2F0BLVH        :   --RW    -           -         
    I2F0TMRL        :   RWRW    1111_1111B  1111_1111B
    I2F0TMRH        :   --RW    1111_1111B  1111_1111B
    I2F0NFL         :   RWRW    0000_0001B  0000_0001B
    I2F0NFH         :   --RW    -           -         
    I2F0IUL         :   -W-W    0000_0001B  0000_0001B
    I2F0IUH         :   ---W    -           -         
    I2C1RD          :   --R-    1111_1111B  -         
    I2C1SA          :   --RW    1111_1111B  1111_1111B
    I2C1TD          :   --RW    1111_1111B  1111_1111B
    I2C1CON0        :   RWRW    1000_0111B  1000_0111B
    I2C1CON1        :   --RW    -           -         
    I2C1MODL        :   RWRW    0000_1111B  0000_1111B
    I2C1MODH        :   --RW    0000_0011B  0000_0011B
    I2C1STAL        :   R-R-    0000_0110B  -         
    I2C1STAH        :   --R-    -           -         
    SF0CTRLL        :   RWRW    0111_1111B  0111_1111B
    SF0CTRLH        :   --RW    0000_1111B  0000_1111B
    SF0INTCL        :   RWRW    0001_1111B  0001_1111B
    SF0INTCH        :   --RW    1111_1111B  1111_1111B
    SF0TRACL        :   RWRW    1111_1111B  1111_1111B
    SF0TRACH        :   --RW    0000_0001B  0000_0001B
    SF0BRRL         :   RWRW    1111_1111B  1111_1111B
    SF0BRRH         :   --RW    1111_0011B  1111_0011B
    SF0SRRL         :   R-R-    0011_1111B  -         
    SF0SRRH         :   --R-    0001_1111B  -         
    SF0SRCL         :   -W-W    0011_1111B  0011_1111B
    SF0SRCH         :   ---W    1000_0001B  1000_0001B
    SF0FSRL         :   R-R-    0001_1111B  -         
    SF0FSRH         :   --R-    0001_1111B  -         
    SF0DWRL         :   RWRW    1111_1111B  1111_1111B
    SF0DWRH         :   --RW    1111_1111B  1111_1111B
    SF0DRRL         :   R-R-    1111_1111B  -         
    SF0DRRH         :   --R-    1111_1111B  -         
    UAF1BUFL        :   RWRW    1111_1111B  1111_1111B
    UAF1BUFH        :   --RW    1111_1111B  1111_1111B
    UAF1IERL        :   RWRW    0100_0111B  0100_0111B
    UAF1IIRL        :   R-R-    1100_1111B  -         
    UAF1MODL        :   RWRW    1111_1111B  1111_1111B
    UAF1MODH        :   --RW    1111_0111B  1111_0111B
    UAF1LSRL        :   R-R-    1111_1111B  -         
    UAF1LSRH        :   --R-    0000_0001B  -         
    UAF1CAJL        :   RWRW    0101_1111B  0101_1111B
    UAF1IRQL        :   -W-W    0000_0001B  0000_0001B
    UAF0BUFL        :   RWRW    1111_1111B  1111_1111B
    UAF0BUFH        :   --RW    1111_1111B  1111_1111B
    UAF0IERL        :   RWRW    0100_0111B  0100_0111B
    UAF0IIRL        :   R-R-    1100_1111B  -         
    UAF0MODL        :   RWRW    1111_1111B  1111_1111B
    UAF0MODH        :   --RW    1111_0111B  1111_0111B
    UAF0LSRL        :   R-R-    1111_1111B  -         
    UAF0LSRH        :   --R-    0000_0001B  -         
    UAF0CAJL        :   RWRW    0101_1111B  0101_1111B
    UAF0IRQL        :   -W-W    0000_0001B  0000_0001B
    I2F1SADL        :   RWRW    1111_1110B  1111_1110B
    I2F1SADH        :   --RW    0000_0111B  0000_0111B
    I2F1CTLL        :   RWRW    1111_1111B  1111_1111B
    I2F1CTLH        :   --RW    0011_1010B  0011_1010B
    I2F1SRL         :   RWRW    1110_1111B  1110_1111B
    I2F1SRH         :   --RW    0000_0010B  0000_0010B
    I2F1DRL         :   RWRW    1111_1111B  1111_1111B
    I2F1DRH         :   --RW    -           -         
    I2F1MONL        :   R-R-    0000_0011B  -         
    I2F1MONH        :   --R-    -           -         
    I2F1BCL         :   RWRW    0111_1111B  0111_1111B
    I2F1BCH         :   --RW    -           -         
    I2F1MODL        :   RWRW    0000_0001B  0000_0001B
    I2F1MODH        :   --RW    -           -         
    I2F1BSVL        :   RWRW    1111_1111B  1111_1111B
    I2F1BSVH        :   --RW    1111_1111B  1111_1111B
    I2F1BSBL        :   RWRW    1111_1111B  1111_1111B
    I2F1BSBH        :   --RW    1111_1111B  1111_1111B
    I2F1BFRL        :   RWRW    0000_1011B  0000_1011B
    I2F1BFRH        :   --RW    0001_1111B  0001_1111B
    I2F1BCTL        :   RWRW    0000_0001B  0000_0001B
    I2F1BCTH        :   --RW    -           -         
    I2F1BMKL        :   RWRW    0111_1101B  0111_1101B
    I2F1BMKH        :   --RW    -           -         
    I2F1BSRL        :   RWRW    0111_1101B  0111_1101B
    I2F1BSRH        :   --RW    -           -         
    I2F1BLVL        :   RWRW    0001_1111B  0001_1111B
    I2F1BLVH        :   --RW    -           -         
    I2F1TMRL        :   RWRW    1111_1111B  1111_1111B
    I2F1TMRH        :   --RW    1111_1111B  1111_1111B
    I2F1NFL         :   RWRW    0000_0001B  0000_0001B
    I2F1NFH         :   --RW    -           -         
    I2F1IUL         :   -W-W    0000_0001B  0000_0001B
    I2F1IUH         :   ---W    -           -         
    RADCA0L         :   RWRW    1111_1111B  1111_1111B
    RADCA0H         :   --RW    1111_1111B  1111_1111B
    RADCA1L         :   RWRW    1111_1111B  1111_1111B
    RADCA1H         :   --RW    -           -         
    RADCB0L         :   RWRW    1111_1111B  1111_1111B
    RADCB0H         :   --RW    1111_1111B  1111_1111B
    RADCB1L         :   RWRW    1111_1111B  1111_1111B
    RADCB1H         :   --RW    -           -         
    RADMODL         :   RWRW    1111_1111B  1111_1111B
    RADMODH         :   --RW    -           -         
    RADCONL         :   --RW    0000_0001B  0000_0001B
    SADR0L          :   R-R-    1111_1111B  -         
    SADR0H          :   --R-    0000_1111B  -         
    SADR1L          :   R-R-    1111_1111B  -         
    SADR1H          :   --R-    0000_1111B  -         
    SADR2L          :   R-R-    1111_1111B  -         
    SADR2H          :   --R-    0000_1111B  -         
    SADR3L          :   R-R-    1111_1111B  -         
    SADR3H          :   --R-    0000_1111B  -         
    SADR4L          :   R-R-    1111_1111B  -         
    SADR4H          :   --R-    0000_1111B  -         
    SADR5L          :   R-R-    1111_1111B  -         
    SADR5H          :   --R-    0000_1111B  -         
    SADR6L          :   R-R-    1111_1111B  -         
    SADR6H          :   --R-    0000_1111B  -         
    SADR7L          :   R-R-    1111_1111B  -         
    SADR7H          :   --R-    0000_1111B  -         
    SADR8L          :   R-R-    1111_1111B  -         
    SADR8H          :   --R-    0000_1111B  -         
    SADR9L          :   R-R-    1111_1111B  -         
    SADR9H          :   --R-    0000_1111B  -         
    SADRAL          :   R-R-    1111_1111B  -         
    SADRAH          :   --R-    0000_1111B  -         
    SADRBL          :   R-R-    1111_1111B  -         
    SADRBH          :   --R-    0000_1111B  -         
    SADCON0         :   --RW    0011_0111B  0011_0111B
    SADCON1         :   --RW    0000_0001B  0000_0001B
    SADENL          :   RWRW    1111_1111B  1111_1111B
    SADENH          :   --RW    0000_1111B  0000_1111B
    SADTCHL         :   RWRW    1111_1111B  1111_1111B
    SADTCHH         :   --RW    0000_1111B  0000_1111B
    SADTRGL         :   RWRW    0000_0001B  0000_0001B
    SADTRGH         :   --RW    0001_1111B  0001_1111B
    SADCVTL         :   RWRW    1111_1111B  1111_1111B
    SADCVTH         :   --RW    1111_1111B  1111_1111B
    MD0CON          :   --RW    0000_0011B  0000_0011B
    MD0TMP          :   --RW    0000_1111B  0000_1111B
    MD0TON          :   RWRW    0111_1111B  0111_1111B
    MD0LEN          :   --RW    0011_1111B  0011_1111B
    VLSCONL         :   RWRW    0011_1111B  0011_1111B
    VLSCONH         :   --RW    1000_0111B  1000_0111B
    VLSMODL         :   RWRW    0000_0011B  0000_0011B
    VLSMODH         :   --RW    0000_0111B  0000_0111B
    CMP0CON         :   --RW    0000_0111B  0000_0111B
    CMP0MODL        :   RWRW    0011_0011B  0011_0011B
    CMP0MODH        :   --RW    0001_0011B  0001_0011B
    CMP1CON         :   --RW    0000_0111B  0000_0111B
    CMP1MODL        :   RWRW    0011_0011B  0011_0011B
    CMP1MODH        :   --RW    0001_0011B  0001_0011B
    P0EXI0          :   RWRW    1111_1111B  1111_1111B
    P0EXI1          :   --RW    1111_1111B  1111_1111B
    P0EXI2          :   RWRW    1111_1111B  1111_1111B
    P0EXI3          :   --RW    -           -         
    P0IE            :   --RW    0011_1111B  0011_1111B
    P0IS            :   --R-    0011_1111B  -         
    P0IC            :   ---W    0011_1111B  0011_1111B
    P0IU            :   ---W    0000_0001B  0000_0001B
    P2EXI0          :   RWRW    1111_1111B  1111_1111B
    P2EXI1          :   --RW    1111_1111B  1111_1111B
    P2IE            :   --RW    0000_1111B  0000_1111B
    P2IS            :   --R-    0000_1111B  -         
    P2IC            :   ---W    0000_1111B  0000_1111B
    P2IU            :   ---W    0000_0001B  0000_0001B
    P3EXI0          :   RWRW    1111_1111B  1111_1111B
    P3EXI1          :   --RW    1111_1111B  1111_1111B
    P3EXI2          :   RWRW    1111_1111B  1111_1111B
    P3EXI3          :   --RW    1111_1111B  1111_1111B
    P3IE            :   --RW    1111_1111B  1111_1111B
    P3IS            :   --R-    1111_1111B  -         
    P3IC            :   ---W    1111_1111B  1111_1111B
    P3IU            :   ---W    0000_0001B  0000_0001B
    P4EXI0          :   RWRW    1111_1111B  1111_1111B
    P4EXI1          :   --RW    1111_1111B  1111_1111B
    P4EXI2          :   RWRW    1111_1111B  1111_1111B
    P4EXI3          :   --RW    1111_1111B  1111_1111B
    P4IE            :   --RW    1111_1111B  1111_1111B
    P4IS            :   --R-    1111_1111B  -         
    P4IC            :   ---W    1111_1111B  1111_1111B
    P4IU            :   ---W    0000_0001B  0000_0001B
    P5EXI0          :   RWRW    1111_1111B  1111_1111B
    P5EXI1          :   --RW    1111_1111B  1111_1111B
    P5EXI2          :   RWRW    1111_1111B  1111_1111B
    P5EXI3          :   --RW    1111_1111B  1111_1111B
    P5IE            :   --RW    1111_1111B  1111_1111B
    P5IS            :   --R-    1111_1111B  -         
    P5IC            :   ---W    1111_1111B  1111_1111B
    P5IU            :   ---W    0000_0001B  0000_0001B
    P7EXI0          :   RWRW    1111_1111B  1111_1111B
    P7EXI1          :   --RW    1111_1111B  1111_1111B
    P7EXI2          :   RWRW    1111_1111B  1111_1111B
    P7EXI3          :   --RW    1111_1111B  1111_1111B
    P7IE            :   --RW    1111_1111B  1111_1111B
    P7IS            :   --R-    1111_1111B  -         
    P7IC            :   ---W    1111_1111B  1111_1111B
    P7IU            :   ---W    0000_0001B  0000_0001B
    P8EXI0          :   RWRW    1111_1111B  1111_1111B
    P8EXI1          :   --RW    1111_1111B  1111_1111B
    P8EXI2          :   RWRW    1111_1111B  1111_1111B
    P8EXI3          :   --RW    1111_1111B  1111_1111B
    P8IE            :   --RW    1111_1111B  1111_1111B
    P8IS            :   --R-    1111_1111B  -         
    P8IC            :   ---W    1111_1111B  1111_1111B
    P8IU            :   ---W    0000_0001B  0000_0001B
    COMMSK0L        :   RWRW    1111_1111B  1111_1111B
    COMMSK0H        :   --RW    1111_1111B  1111_1111B
    COMMSK1L        :   RWRW    1111_1111B  1111_1111B
    COMMSK1H        :   --RW    1111_1111B  1111_1111B
    DSPR100         :   RWRW    1111_1111B  1111_1111B
    DSPR101         :   --RW    1111_1111B  1111_1111B
    DSPR102         :   RWRW    1111_1111B  1111_1111B
    DSPR103         :   --RW    1111_1111B  1111_1111B
    DSPR104         :   RWRW    1111_1111B  1111_1111B
    DSPR105         :   --RW    1111_1111B  1111_1111B
    DSPR106         :   RWRW    1111_1111B  1111_1111B
    DSPR107         :   --RW    1111_1111B  1111_1111B
    DSPR108         :   RWRW    1111_1111B  1111_1111B
    DSPR109         :   --RW    1111_1111B  1111_1111B
    DSPR10A         :   RWRW    1111_1111B  1111_1111B
    DSPR10B         :   --RW    1111_1111B  1111_1111B
    DSPR10C         :   RWRW    1111_1111B  1111_1111B
    DSPR10D         :   --RW    1111_1111B  1111_1111B
    DSPR10E         :   RWRW    1111_1111B  1111_1111B
    DSPR10F         :   --RW    1111_1111B  1111_1111B
    DSPR110         :   RWRW    1111_1111B  1111_1111B
    DSPR111         :   --RW    1111_1111B  1111_1111B
    DSPR112         :   RWRW    1111_1111B  1111_1111B
    DSPR113         :   --RW    1111_1111B  1111_1111B
    DSPR114         :   RWRW    1111_1111B  1111_1111B
    DSPR115         :   --RW    1111_1111B  1111_1111B
    DSPR116         :   RWRW    1111_1111B  1111_1111B
    DSPR117         :   --RW    1111_1111B  1111_1111B
    DSPR118         :   RWRW    1111_1111B  1111_1111B
    DSPR119         :   --RW    1111_1111B  1111_1111B
    DSPR11A         :   RWRW    1111_1111B  1111_1111B
    DSPR11B         :   --RW    1111_1111B  1111_1111B
    DSPR11C         :   RWRW    1111_1111B  1111_1111B
    DSPR11D         :   --RW    1111_1111B  1111_1111B
    DSPR11E         :   RWRW    1111_1111B  1111_1111B
    DSPR11F         :   --RW    1111_1111B  1111_1111B
    DSPR120         :   RWRW    1111_1111B  1111_1111B
    DSPR121         :   --RW    1111_1111B  1111_1111B
    DSPR122         :   RWRW    1111_1111B  1111_1111B
    DSPR123         :   --RW    1111_1111B  1111_1111B
    DSPR124         :   RWRW    1111_1111B  1111_1111B
    DSPR125         :   --RW    1111_1111B  1111_1111B
    DSPR126         :   RWRW    1111_1111B  1111_1111B
    DSPR127         :   --RW    1111_1111B  1111_1111B
    DSPR128         :   RWRW    1111_1111B  1111_1111B
    DSPR129         :   --RW    1111_1111B  1111_1111B
    DSPR12A         :   RWRW    1111_1111B  1111_1111B
    DSPR12B         :   --RW    1111_1111B  1111_1111B
    DSPR12C         :   RWRW    1111_1111B  1111_1111B
    DSPR12D         :   --RW    1111_1111B  1111_1111B
    DSPR12E         :   RWRW    1111_1111B  1111_1111B
    DSPR12F         :   --RW    1111_1111B  1111_1111B
    DSPR130         :   RWRW    1111_1111B  1111_1111B
    DSPR131         :   --RW    1111_1111B  1111_1111B
    DSPR132         :   RWRW    1111_1111B  1111_1111B
    DSPR133         :   --RW    1111_1111B  1111_1111B
    DSPR134         :   RWRW    1111_1111B  1111_1111B
    DSPR135         :   --RW    1111_1111B  1111_1111B
    DSPR136         :   RWRW    1111_1111B  1111_1111B
    DSPR137         :   --RW    1111_1111B  1111_1111B
    DSPR138         :   RWRW    1111_1111B  1111_1111B
    DSPR139         :   --RW    1111_1111B  1111_1111B
    DSPR13A         :   RWRW    1111_1111B  1111_1111B
    DSPR13B         :   --RW    1111_1111B  1111_1111B
    DSPR13C         :   RWRW    1111_1111B  1111_1111B
    DSPR13D         :   --RW    1111_1111B  1111_1111B
    DSPR13E         :   RWRW    1111_1111B  1111_1111B
    DSPR13F         :   --RW    1111_1111B  1111_1111B
    DSPR140         :   RWRW    1111_1111B  1111_1111B
    DSPR141         :   --RW    1111_1111B  1111_1111B
    DSPR142         :   RWRW    1111_1111B  1111_1111B
    DSPR143         :   --RW    1111_1111B  1111_1111B
    DSPR144         :   RWRW    1111_1111B  1111_1111B
    DSPR145         :   --RW    1111_1111B  1111_1111B
    DSPR146         :   RWRW    1111_1111B  1111_1111B
    DSPR147         :   --RW    1111_1111B  1111_1111B
    DSPR148         :   RWRW    1111_1111B  1111_1111B
    DSPR149         :   --RW    1111_1111B  1111_1111B
    DSPR14A         :   RWRW    1111_1111B  1111_1111B
    DSPR14B         :   --RW    1111_1111B  1111_1111B
    DSPR14C         :   RWRW    1111_1111B  1111_1111B
    DSPR14D         :   --RW    1111_1111B  1111_1111B
    DSPR14E         :   RWRW    1111_1111B  1111_1111B
    DSPR14F         :   --RW    1111_1111B  1111_1111B
    DSPR150         :   RWRW    1111_1111B  1111_1111B
    DSPR151         :   --RW    1111_1111B  1111_1111B
    DSPR152         :   RWRW    1111_1111B  1111_1111B
    DSPR153         :   --RW    1111_1111B  1111_1111B
    DSPR154         :   RWRW    1111_1111B  1111_1111B
    DSPR155         :   --RW    1111_1111B  1111_1111B
    DSPR156         :   RWRW    1111_1111B  1111_1111B
    DSPR157         :   --RW    1111_1111B  1111_1111B
    DSPR158         :   RWRW    1111_1111B  1111_1111B
    DSPR159         :   --RW    1111_1111B  1111_1111B
    DSPR15A         :   RWRW    1111_1111B  1111_1111B
    DSPR15B         :   --RW    1111_1111B  1111_1111B
    DSPR15C         :   RWRW    1111_1111B  1111_1111B
    DSPR15D         :   --RW    1111_1111B  1111_1111B
    DSPR15E         :   RWRW    1111_1111B  1111_1111B
    DSPR15F         :   --RW    1111_1111B  1111_1111B
    DSPR160         :   RWRW    1111_1111B  1111_1111B
    DSPR161         :   --RW    1111_1111B  1111_1111B
    DSPR162         :   RWRW    1111_1111B  1111_1111B
    DSPR163         :   --RW    1111_1111B  1111_1111B
    DSPR164         :   RWRW    1111_1111B  1111_1111B
    DSPR165         :   --RW    1111_1111B  1111_1111B
    DSPR166         :   RWRW    1111_1111B  1111_1111B
    DSPR167         :   --RW    1111_1111B  1111_1111B
    DSPR168         :   RWRW    1111_1111B  1111_1111B
    DSPR169         :   --RW    1111_1111B  1111_1111B
    DSPR16A         :   RWRW    1111_1111B  1111_1111B
    DSPR16B         :   --RW    1111_1111B  1111_1111B
    DSPR16C         :   RWRW    1111_1111B  1111_1111B
    DSPR16D         :   --RW    1111_1111B  1111_1111B
    DSPR16E         :   RWRW    1111_1111B  1111_1111B
    DSPR16F         :   --RW    1111_1111B  1111_1111B
    DSPR170         :   RWRW    1111_1111B  1111_1111B
    DSPR171         :   --RW    1111_1111B  1111_1111B
    DSPR172         :   RWRW    1111_1111B  1111_1111B
    DSPR173         :   --RW    1111_1111B  1111_1111B
    DSPR174         :   RWRW    1111_1111B  1111_1111B
    DSPR175         :   --RW    1111_1111B  1111_1111B
    DSPR176         :   RWRW    1111_1111B  1111_1111B
    DSPR177         :   --RW    1111_1111B  1111_1111B
    DSPR178         :   RWRW    1111_1111B  1111_1111B
    DSPR179         :   --RW    1111_1111B  1111_1111B
    DSPR17A         :   RWRW    1111_1111B  1111_1111B
    DSPR17B         :   --RW    1111_1111B  1111_1111B
    DSPR17C         :   RWRW    1111_1111B  1111_1111B
    DSPR17D         :   --RW    1111_1111B  1111_1111B
    DSPR17E         :   RWRW    1111_1111B  1111_1111B
    DSPR17F         :   --RW    1111_1111B  1111_1111B
    DSPR180         :   RWRW    1111_1111B  1111_1111B
    DSPR181         :   --RW    1111_1111B  1111_1111B
    DSPR182         :   RWRW    1111_1111B  1111_1111B
    DSPR183         :   --RW    1111_1111B  1111_1111B
    DSPR184         :   RWRW    1111_1111B  1111_1111B
    DSPR185         :   --RW    1111_1111B  1111_1111B
    DSPR186         :   RWRW    1111_1111B  1111_1111B
    DSPR187         :   --RW    1111_1111B  1111_1111B
    DSPR188         :   RWRW    1111_1111B  1111_1111B
    DSPR189         :   --RW    1111_1111B  1111_1111B
    DSPR18A         :   RWRW    1111_1111B  1111_1111B
    DSPR18B         :   --RW    1111_1111B  1111_1111B
    DSPR18C         :   RWRW    1111_1111B  1111_1111B
    DSPR18D         :   --RW    1111_1111B  1111_1111B
    DSPR18E         :   RWRW    1111_1111B  1111_1111B
    DSPR18F         :   --RW    1111_1111B  1111_1111B
    DSPR190         :   RWRW    1111_1111B  1111_1111B
    DSPR191         :   --RW    1111_1111B  1111_1111B
    DSPR192         :   RWRW    1111_1111B  1111_1111B
    DSPR193         :   --RW    1111_1111B  1111_1111B
    DSPR194         :   RWRW    1111_1111B  1111_1111B
    DSPR195         :   --RW    1111_1111B  1111_1111B
    DSPR196         :   RWRW    1111_1111B  1111_1111B
    DSPR197         :   --RW    1111_1111B  1111_1111B
    DSPR198         :   RWRW    1111_1111B  1111_1111B
    DSPR199         :   --RW    1111_1111B  1111_1111B
    DSPR19A         :   RWRW    1111_1111B  1111_1111B
    DSPR19B         :   --RW    1111_1111B  1111_1111B
    DSPR19C         :   RWRW    1111_1111B  1111_1111B
    DSPR19D         :   --RW    1111_1111B  1111_1111B
    DSPR19E         :   RWRW    1111_1111B  1111_1111B
    DSPR19F         :   --RW    1111_1111B  1111_1111B
    DSPR1A0         :   RWRW    1111_1111B  1111_1111B
    DSPR1A1         :   --RW    1111_1111B  1111_1111B
    DSPR1A2         :   RWRW    1111_1111B  1111_1111B
    DSPR1A3         :   --RW    1111_1111B  1111_1111B
    DSPR1A4         :   RWRW    1111_1111B  1111_1111B
    DSPR1A5         :   --RW    1111_1111B  1111_1111B
    DSPR1A6         :   RWRW    1111_1111B  1111_1111B
    DSPR1A7         :   --RW    1111_1111B  1111_1111B
    DSPR1A8         :   RWRW    1111_1111B  1111_1111B
    DSPR1A9         :   --RW    1111_1111B  1111_1111B
    DSPR1AA         :   RWRW    1111_1111B  1111_1111B
    DSPR1AB         :   --RW    1111_1111B  1111_1111B
    DSPR1AC         :   RWRW    1111_1111B  1111_1111B
    DSPR1AD         :   --RW    1111_1111B  1111_1111B
    DSPR1AE         :   RWRW    1111_1111B  1111_1111B
    DSPR1AF         :   --RW    1111_1111B  1111_1111B
    DSPR1B0         :   RWRW    1111_1111B  1111_1111B
    DSPR1B1         :   --RW    1111_1111B  1111_1111B
    DSPR1B2         :   RWRW    1111_1111B  1111_1111B
    DSPR1B3         :   --RW    1111_1111B  1111_1111B
    DSPR1B4         :   RWRW    1111_1111B  1111_1111B
    DSPR1B5         :   --RW    1111_1111B  1111_1111B
    DSPR1B6         :   RWRW    1111_1111B  1111_1111B
    DSPR1B7         :   --RW    1111_1111B  1111_1111B
    DSPR1B8         :   RWRW    1111_1111B  1111_1111B
    DSPR1B9         :   --RW    1111_1111B  1111_1111B
    DSPR1BA         :   RWRW    1111_1111B  1111_1111B
    DSPR1BB         :   --RW    1111_1111B  1111_1111B
    DSPR1BC         :   RWRW    1111_1111B  1111_1111B
    DSPR1BD         :   --RW    1111_1111B  1111_1111B
    DSPR1BE         :   RWRW    1111_1111B  1111_1111B
    DSPR1BF         :   --RW    1111_1111B  1111_1111B
    DSPR1C0         :   RWRW    1111_1111B  1111_1111B
    DSPR1C1         :   --RW    1111_1111B  1111_1111B
    DSPR1C2         :   RWRW    1111_1111B  1111_1111B
    DSPR1C3         :   --RW    1111_1111B  1111_1111B
    DSPR1C4         :   RWRW    1111_1111B  1111_1111B
    DSPR1C5         :   --RW    1111_1111B  1111_1111B
    DSPR1C6         :   RWRW    1111_1111B  1111_1111B
    DSPR1C7         :   --RW    1111_1111B  1111_1111B
    DSPR1C8         :   RWRW    1111_1111B  1111_1111B
    DSPR1C9         :   --RW    1111_1111B  1111_1111B
    DSPR1CA         :   RWRW    1111_1111B  1111_1111B
    DSPR1CB         :   --RW    1111_1111B  1111_1111B
    DSPR1CC         :   RWRW    1111_1111B  1111_1111B
    DSPR1CD         :   --RW    1111_1111B  1111_1111B
    DSPR1CE         :   RWRW    1111_1111B  1111_1111B
    DSPR1CF         :   --RW    1111_1111B  1111_1111B
    DSPR1D0         :   RWRW    1111_1111B  1111_1111B
    DSPR1D1         :   --RW    1111_1111B  1111_1111B
    DSPR1D2         :   RWRW    1111_1111B  1111_1111B
    DSPR1D3         :   --RW    1111_1111B  1111_1111B
    DSPR1D4         :   RWRW    1111_1111B  1111_1111B
    DSPR1D5         :   --RW    1111_1111B  1111_1111B
    DSPR1D6         :   RWRW    1111_1111B  1111_1111B
    DSPR1D7         :   --RW    1111_1111B  1111_1111B
    DSPR1D8         :   RWRW    1111_1111B  1111_1111B
    DSPR1D9         :   --RW    1111_1111B  1111_1111B
    DSPR1DA         :   RWRW    1111_1111B  1111_1111B
    DSPR1DB         :   --RW    1111_1111B  1111_1111B
    DSPR1DC         :   RWRW    1111_1111B  1111_1111B
    DSPR1DD         :   --RW    1111_1111B  1111_1111B
    DSPR1DE         :   RWRW    1111_1111B  1111_1111B
    DSPR1DF         :   --RW    1111_1111B  1111_1111B
    DSPR1E0         :   RWRW    1111_1111B  1111_1111B
    DSPR1E1         :   --RW    1111_1111B  1111_1111B
    DSPR1E2         :   RWRW    1111_1111B  1111_1111B
    DSPR1E3         :   --RW    1111_1111B  1111_1111B
    DSPR1E4         :   RWRW    1111_1111B  1111_1111B
    DSPR1E5         :   --RW    1111_1111B  1111_1111B
    DSPR1E6         :   RWRW    1111_1111B  1111_1111B
    DSPR1E7         :   --RW    1111_1111B  1111_1111B
    DSPR1E8         :   RWRW    1111_1111B  1111_1111B
    DSPR1E9         :   --RW    1111_1111B  1111_1111B
    DSPR1EA         :   RWRW    1111_1111B  1111_1111B
    DSPR1EB         :   --RW    1111_1111B  1111_1111B
    DSPR1EC         :   RWRW    1111_1111B  1111_1111B
    DSPR1ED         :   --RW    1111_1111B  1111_1111B
    DSPR1EE         :   RWRW    1111_1111B  1111_1111B
    DSPR1EF         :   --RW    1111_1111B  1111_1111B
    DSPR1F0         :   RWRW    1111_1111B  1111_1111B
    DSPR1F1         :   --RW    1111_1111B  1111_1111B
    DSPR1F2         :   RWRW    1111_1111B  1111_1111B
    DSPR1F3         :   --RW    1111_1111B  1111_1111B
    DSPR1F4         :   RWRW    1111_1111B  1111_1111B
    DSPR1F5         :   --RW    1111_1111B  1111_1111B
    DSPR1F6         :   RWRW    1111_1111B  1111_1111B
    DSPR1F7         :   --RW    1111_1111B  1111_1111B
    DSPR1F8         :   RWRW    1111_1111B  1111_1111B
    DSPR1F9         :   --RW    1111_1111B  1111_1111B
    DSPR1FA         :   RWRW    1111_1111B  1111_1111B
    DSPR1FB         :   --RW    1111_1111B  1111_1111B
    DSPR1FC         :   RWRW    1111_1111B  1111_1111B
    DSPR1FD         :   --RW    1111_1111B  1111_1111B
    DSPR1FE         :   RWRW    1111_1111B  1111_1111B
    DSPR1FF         :   --RW    1111_1111B  1111_1111B


;+++++++++++++++++++++++++++++++++++++++++++++++++++++
;       INSTRUCTION
;
;       definition of basic instruction mnemonic symbols
;       - SYNTAX -
;       #INSTRUCTION
;               Mnemonic List
;               .............
;+++++++++++++++++++++++++++++++++++++++++++++++++++++
#INSTRUCTION
L     ST    LEA
MOV   CMP   ADD   SUB   AND   OR    XOR   SLL   SRL   SRA
CMPC  ADDC  SUBC  SLLC  SRLC
NEG   DAA   DAS
SB    RB    TB
INC   DEC
PUSH  POP
EI    DI    SC    RC    CPLC
EXTBW
MUL   DIV
BEQ   BNE   BAL
BLT   BLE   BGT   BGE
BLTS  BLES  BGTS  BGES
BOV   BNV   BPS   BNS
BNC   BCY   BNZ   BZ
BC
SWI   B     BL    RTI    RT    NOP
BRK

#COPROCESSOR
CR0   CR1   CR2   CR3   CR4   CR5   CR6   CR7
CR8   CR9   CR15
CER0  CER2  CER4  CER6  CER8  
CXR0  CXR4  
CQR0  

;+++++++++++++++++++++++++++++++++++++++++++++++++++++
;        Absolute Assembler Information.
;+++++++++++++++++++++++++++++++++++++++++++++++++++++
#CASE   ASM



#ENDCASE

;+++++++++++++++++++++++++++++++++++++++++++++++++++++
;        Relocatable Assembler Information.
;+++++++++++++++++++++++++++++++++++++++++++++++++++++
#CASE   RAS

;   definition depends on RASU8

#ENDCASE

;+++++++++++++++++++++++++++++++++++++++++++++++++++++
;        Debugger Information.
;+++++++++++++++++++++++++++++++++++++++++++++++++++++
#CASE   DEBUGGER

;   definition depends on DEBUGGER

;+++++++++++++++++++++++++++++++++++++++++++++++++++++
;        Interrupt Information.
;+++++++++++++++++++++++++++++++++++++++++++++++++++++
#INTERRUPT
    WDTINT,         -,          QWDT
    EXI0INT,        EEXI0,      QEXI0
    EXI1INT,        EEXI1,      QEXI1
    EXI2INT,        EEXI2,      QEXI2
    EXI3INT,        EEXI3,      QEXI3
    EXI4INT,        EEXI4,      QEXI4
    EXI5INT,        EEXI5,      QEXI5
    EXI6INT,        EEXI6,      QEXI6
    EXI7INT,        EEXI7,      QEXI7
    SIO0INT,        ESIO0,      QSIO0
    SIOF0INT,       ESIOF0,     QSIOF0
    I2C1INT,        EI2C1,      QI2C1
    UA0INT,         EUA0,       QUA0
    UA1INT,         EUA1,       QUA1
    UAF0INT,        EUAF0,      QUAF0
    UAF1INT,        EUAF1,      QUAF1
    I2CF0INT,       EI2CF0,     QI2CF0
    I2CF1INT,       EI2CF1,     QI2CF1
    LOSCINT,        ELOSC,      QLOSC
    VLSINT,         EVLS,       QVLS
    MD0INT,         EMD0,       QMD0
    SADINT,         ESAD,       QSAD
    RADINT,         ERAD,       QRAD
    CMP0INT,        ECMP0,      QCMP0
    CMP1INT,        ECMP1,      QCMP1
    TM0INT,         ETM0,       QTM0
    TM1INT,         ETM1,       QTM1
    TM2INT,         ETM2,       QTM2
    TM3INT,         ETM3,       QTM3
    TM4INT,         ETM4,       QTM4
    TM5INT,         ETM5,       QTM5
    TM6INT,         ETM6,       QTM6
    TM7INT,         ETM7,       QTM7
    FTM0INT,        EFTM0,      QFTM0
    FTM1INT,        EFTM1,      QFTM1
    FTM2INT,        EFTM2,      QFTM2
    FTM3INT,        EFTM3,      QFTM3
    RTC1INT,        ERTC1,      QRTC1
    AL11INT,        EAL11,      QAL11
    TM1KINT,        ETM1K,      QTM1K
    LTB0INT,        ELTBC0,     QLTBC0
    LTB1INT,        ELTBC1,     QLTBC1
    LTB2INT,        ELTBC2,     QLTBC2
    LCDFRINT,       ELCD,       QLCD
    RTC2INT,        ERTC2,      QRTC2
    AL12INT,        EAL12,      QAL12
    RTC0INT,        ERTC0,      QRTC0
    AL10INT,        EAL10,      QAL10

#ENDCASE

;------------- END OF DCL (ML620909) -------------
