; =============================================================================
;   Aardwolf Builder's Wizard
;   Version 1.14
;   Copyright (C) 2004-2005 Ghaan
;   http://www.ghaan.net
;
;   Modified by Tir
;
;
;   This program is free software; you can redistribute it and/or modify
;   it under the terms of the GNU General Public License as published by
;   the Free Software Foundation; either version 2 of the License, or
;   (at your option) any later version.
;
;   This program is distributed in the hope that it will be useful,
;   but WITHOUT ANY WARRANTY; without even the implied warranty of
;   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;   GNU General Public License for more details.
;
;
;   INSTRUCTIONS:
;   -------------
;   1. Add line /addworld -p -Tdiku.mud Builder <login> <password> 66.162.28.89 6000
;      into your config file (usually .tfrc in your home directory).
;   2. Load the script from inside TinyFugue by issuing /load builder.tf command.
;   3. Issue command /connect Builder to connect to builder's port (if not yet connected).
;   4. Type /build and then /build2 to get help.
; =============================================================================


; ==========================================================================
;	MOB CHARTS
; ==========================================================================

/def level1 =  level 1 %;  hitdice 1d2+6 %;  damdice 1d2+0 %;  hitroll 21 %;  wealth 5 %;  mana 1d1+10000
/def level2 =  level 2 %;  hitdice 1d3+15 %;  damdice 1d2+1 %;  hitroll 22 %;  wealth 5 %;  mana 1d1+10000
/def level3 =  level 3 %;  hitdice 1d6+24 %;  damdice 1d3+2 %;  hitroll 23 %;  wealth 5 %;  mana 1d1+10000
/def level4 =  level 4 %;  hitdice 1d10+34 %;  damdice 1d3+2 %;  hitroll 24 %;  wealth 5 %;  mana 1d1+10000
/def level5 =  level 5 %;  hitdice 1d17+42 %;  damdice 2d3+2 %;  hitroll 25 %;  wealth 5 %;  mana 1d1+10000
/def level6 =  level 6 %;  hitdice 2d18+52 %;  damdice 2d3+3 %;  hitroll 26 %;  wealth 12 %;  mana 1d1+10000
/def level7 =  level 7 %;  hitdice 3d19+63 %;  damdice 2d4+3 %;  hitroll 27 %;  wealth 12 %;  mana 1d1+10000
/def level8 =  level 8 %;  hitdice 4d20+74 %;  damdice 2d4+4 %;  hitroll 28 %;  wealth 12 %;  mana 1d1+10000
/def level9 =  level 9 %;  hitdice 5d21+85 %;  damdice 2d5+4 %;  hitroll 29 %;  wealth 12 %;  mana 1d1+10000
/def level10 =  level 10 %;  hitdice  3d22+96 %;  damdice 2d5+5 %;  hitroll 30 %;  wealth 12 %;  mana 1d1+10000
/def level11 =  level 11 %;  hitdice 3d24+106 %;  damdice 2d5+5 %;  hitroll 31 %;  wealth 30 %;  mana 1d1+10000
/def level12 =  level 12 %;  hitdice 3d26+117 %;  damdice 2d5+6 %;  hitroll 32 %;  wealth 30 %;  mana 1d1+10000
/def level13 =  level 13 %;  hitdice 4d28+129 %;  damdice 2d5+7 %;  hitroll 33 %;  wealth 30 %;  mana 1d1+10000
/def level14 =  level 14 %;  hitdice 4d29+145 %;  damdice 3d5+7 %;  hitroll 34 %;  wealth 30 %;  mana 1d1+10000
/def level15 =  level 15 %;  hitdice 5d30+161 %;  damdice 3d5+8 %;  hitroll 35 %;  wealth 30 %;  mana 1d1+10000
/def level16 =  level 16 %;  hitdice 5d32+180 %;  damdice 3d5+8 %;  hitroll 36 %;  wealth 30 %;  mana 1d1+10000
/def level17 =  level 17 %;  hitdice 6d34+200 %;  damdice 3d5+9 %;  hitroll 37 %;  wealth 30 %;  mana 1d1+10000
/def level18 =  level 18 %;  hitdice 6d36+222 %;  damdice 4d5+9 %;  hitroll 38 %;  wealth 30 %;  mana 1d1+10000
/def level19 =  level 19 %;  hitdice 7d38+238 %;  damdice 4d6+9 %;  hitroll 39 %;  wealth 30 %;  mana 1d1+10000
/def level20 =  level 20 %;  hitdice 8d40+250 %;  damdice 4d5+10 %;  hitroll 40 %;  wealth 30 %;  mana 1d1+10000
/def level21 =  level 21 %;  hitdice 8d42+266 %;  damdice 4d5+10 %;  hitroll 41 %;  wealth 60 %;  mana 1d1+10000
/def level22 =  level 22 %;  hitdice 8d44+282 %;  damdice 4d5+11 %;  hitroll 42 %;  wealth 60 %;  mana 1d1+10000
/def level23 =  level 23 %;  hitdice 8d46+298 %;  damdice 4d5+11 %;  hitroll 43 %;  wealth 60 %;  mana 1d1+10000
/def level24 =  level 24 %;  hitdice 9d48+314 %;  damdice 5d5+11 %;  hitroll 44 %;  wealth 60 %;  mana 1d1+10000
/def level25 =  level 25 %;  hitdice 9d50+330 %;  damdice 5d6+11 %;  hitroll 45 %;  wealth 60 %;  mana 1d1+10000
/def level26 =  level 26 %;  hitdice 9d52+346 %;  damdice 5d6+12 %;  hitroll 46 %;  wealth 60 %;  mana 1d1+10000
/def level27 =  level 27 %;  hitdice 10d54+362 %;  damdice 5d6+12 %;  hitroll 47 %;  wealth 60 %;  mana 1d1+10000
/def level28 =  level 28 %;  hitdice 10d56+376 %;  damdice 5d6+13 %;  hitroll 48 %;  wealth 60 %;  mana 1d1+10000
/def level29 =  level 29 %;  hitdice 10d58+398 %;  damdice 5d6+14 %;  hitroll 49 %;  wealth 60 %;  mana 1d1+10000
/def level30 =  level 30 %;  hitdice 10d61+416 %;  damdice 5d6+15 %;  hitroll 50 %;  wealth 60 %;  mana 1d1+10000
/def level31 =  level 31 %;  hitdice 10d64+430 %;  damdice 5d6+15 %;  hitroll 51 %;  wealth 120%;  mana 1d1+10000
/def level32 =  level 32 %;  hitdice 10d68+450 %;  damdice 5d6+16 %;  hitroll 52 %;  wealth 120%;  mana 1d1+10000
/def level33 =  level 33 %;  hitdice 10d73+470 %;  damdice 5d7+16 %;  hitroll 53 %;  wealth 120%;  mana 1d1+10000
/def level34 =  level 34 %;  hitdice 10d77+490 %;  damdice 5d7+17 %;  hitroll 54 %;  wealth 120%;  mana 1d1+10000
/def level35 =  level 35 %;  hitdice 10d83+510 %;  damdice 5d7+17 %;  hitroll 55 %;  wealth 120%;  mana 1d1+10000
/def level36 =  level 36 %;  hitdice 10d88+530 %;  damdice 5d7+18 %;  hitroll 56 %;  wealth 120%;  mana 1d1+10000
/def level37 =  level 37 %;  hitdice 10d92+550 %;  damdice 5d7+18 %;  hitroll 57 %;  wealth 120%;  mana 1d1+10000
/def level38 =  level 38 %;  hitdice 10d96+570 %;  damdice 5d8+19 %;  hitroll 58 %;  wealth 120%;  mana 1d1+10000
/def level39 =  level 39 %;  hitdice 10d98+592 %;  damdice 5d8+19 %;  hitroll 59 %;  wealth 120%;  mana 1d1+10000
/def level40 =  level 40 %;  hitdice 10d100+600 %;  damdice 5d8+20 %;  hitroll 60 %;  wealth 120%;  mana 1d1+10000
/def level41 =  level 41 %;  hitdice 10d115+630 %;  damdice 5d8+20 %;  hitroll 61 %;  wealth 240%;  mana 1d1+10000
/def level42 =  level 42 %;  hitdice 10d123+660 %;  damdice 5d8+21 %;  hitroll 62 %;  wealth 240%;  mana 1d1+10000
/def level43 =  level 43 %;  hitdice 10d129+690 %;  damdice 5d8+21 %;  hitroll 63 %;  wealth 240%;  mana 1d1+10000
/def level44 =  level 44 %;  hitdice 10d135+720 %;  damdice 5d8+22 %;  hitroll 64 %;  wealth 240%;  mana 1d1+10000
/def level45 =  level 45 %;  hitdice 10d141+750 %;  damdice 5d8+22 %;  hitroll 65 %;  wealth 240%;  mana 1d1+10000
/def level46 =  level 46 %;  hitdice 10d147+780 %;  damdice 5d9+23 %;  hitroll 66 %;  wealth 240%;  mana 1d1+10000
/def level47 =  level 47 %;  hitdice 10d153+810 %;  damdice 5d9+23 %;  hitroll 67 %;  wealth 240%;  mana 1d1+10000
/def level48 =  level 48 %;  hitdice 10d159+840 %;  damdice 5d9+24 %;  hitroll 68 %;  wealth 240%;  mana 1d1+10000
/def level49 =  level 49 %;  hitdice 10d167+880 %;  damdice 5d9+24 %;  hitroll 69 %;  wealth 240%;  mana 1d1+10000
/def level50 =  level 50 %;  hitdice 10d175+920 %;  damdice 5d10+25 %;  hitroll 70 %;  wealth 240%;  mana 1d1+10000
/def level51 =  level 51 %;  hitdice 10d178+928 %;  damdice 5d10+25 %;  hitroll 71 %;  wealth 600%;  mana 1d1+10000
/def level52 =  level 52 %;  hitdice 10d181+936 %;  damdice 5d11+26 %;  hitroll 72 %;  wealth 600%;  mana 1d1+10000
/def level53 =  level 53 %;  hitdice 10d184+944 %;  damdice 5d11+26 %;  hitroll 73 %;  wealth 600%;  mana 1d1+10000
/def level54 =  level 54 %;  hitdice 10d187+952 %;  damdice 5d11+27 %;  hitroll 74 %;  wealth 600%;  mana 1d1+10000
/def level55 =  level 55 %;  hitdice 10d190+960 %;  damdice 6d11+27 %;  hitroll 75 %;  wealth 600%;  mana 1d1+10000
/def level56 =  level 56 %;  hitdice 10d192+970 %;  damdice 6d11+27 %;  hitroll 76 %;  wealth 600%;  mana 1d1+10000
/def level57 =  level 57 %;  hitdice 10d194+978 %;  damdice 6d11+28 %;  hitroll 77 %;  wealth 600%;  mana 1d1+10000
/def level58 =  level 58 %;  hitdice 10d194+986 %;  damdice 6d11+29 %;  hitroll 78 %;  wealth 600%;  mana 1d1+10000
/def level59 =  level 59 %;  hitdice 10d196+992 %;  damdice 6d12+29 %;  hitroll 79 %;  wealth 600%;  mana 1d1+10000
/def level60 =  level 60 %;  hitdice 15d200+1000 %;  damdice 6d12+30 %;  hitroll 80 %;  wealth 600%;  mana 1d1+10000
/def level61 =  level 61 %;  hitdice 15d203+1100 %;  damdice 6d12+31 %;  hitroll 81 %;  wealth 1200%;  mana 1d1+10000
/def level62 =  level 62 %;  hitdice 15d206+1200 %;  damdice 6d12+32 %;  hitroll 82 %;  wealth 1200%;  mana 1d1+10000
/def level63 =  level 63 %;  hitdice 16d209+1300 %;  damdice 7d12+33 %;  hitroll 83 %;  wealth 1200%;  mana 1d1+10000
/def level64 =  level 64 %;  hitdice 16d212+1400 %;  damdice 7d12+34 %;  hitroll 84 %;  wealth 1200%;  mana 1d1+10000
/def level65 =  level 65 %;  hitdice 17d215+1500 %;  damdice 7d13+35 %;  hitroll 85 %;  wealth 1200%;  mana 1d1+10000
/def level66 =  level 66 %;  hitdice 17d218+1600 %;  damdice 7d13+36 %;  hitroll 86 %;  wealth 1200%;  mana 1d1+10000
/def level67 =  level 67 %;  hitdice 18d219+1700 %;  damdice 7d14+37 %;  hitroll 87 %;  wealth 1200%;  mana 1d1+10000
/def level68 =  level 68 %;  hitdice 18d221+1800 %;  damdice 7d14+38 %;  hitroll 88 %;  wealth 1200%;  mana 1d1+10000
/def level69 =  level 69 %;  hitdice 19d223+1900 %;  damdice 8d14+39 %;  hitroll 89 %;  wealth 1200%;  mana 1d1+10000
/def level70 =  level 70 %;  hitdice 20d225+2000 %;  damdice 8d14+40 %;  hitroll 90 %;  wealth 1200%;  mana 1d1+10000
/def level71 =  level 71 %;  hitdice 20d227+2100 %;  damdice 8d14+40 %;  hitroll 91 %;  wealth 2400%;  mana 1d1+10000
/def level72 =  level 72 %;  hitdice 20d230+2200 %;  damdice 8d14+41 %;  hitroll 92 %;  wealth 2400%;  mana 1d1+10000
/def level73 =  level 73 %;  hitdice 21d232+2300 %;  damdice 8d14+41 %;  hitroll 93 %;  wealth 2400%;  mana 1d1+10000
/def level74 =  level 74 %;  hitdice 21d235+2400 %;  damdice 8d15+42 %;  hitroll 94 %;  wealth 2400%;  mana 1d1+10000
/def level75 =  level 75 %;  hitdice 22d237+2500 %;  damdice 8d15+42 %;  hitroll 95 %;  wealth 2400%;  mana 1d1+10000
/def level76 =  level 76 %;  hitdice 22d240+2600 %;  damdice 9d15+42 %;  hitroll 96 %;  wealth 2400%;  mana 1d1+10000
/def level77 =  level 77 %;  hitdice 23d242+2700 %;  damdice 9d15+43 %;  hitroll 97 %;  wealth 2400%;  mana 1d1+10000
/def level78 =  level 78 %;  hitdice 23d245+2800 %;  damdice 9d16+43 %;  hitroll 98 %;  wealth 2400%;  mana 1d1+10000
/def level79 =  level 79 %;  hitdice 24d247+2900 %;  damdice 9d16+44 %;  hitroll 99 %;  wealth 2400%;  mana 1d1+10000
/def level80 =  level 80 %;  hitdice 25d250+3000 %;  damdice 9d16+45 %;  hitroll 100 %;  wealth 2400%;  mana 1d1+10000
/def level81 =  level 81 %;  hitdice 25d252+3100 %;  damdice 9d16+45 %;  hitroll 101 %;  wealth 4200%;  mana 1d1+10000
/def level82 =  level 82 %;  hitdice 25d255+3200 %;  damdice 9d16+46 %;  hitroll 102 %;  wealth 4200%;  mana 1d1+10000
/def level83 =  level 83 %;  hitdice 26d257+3300 %;  damdice 9d16+46 %;  hitroll 103 %;  wealth 4200%;  mana 1d1+10000
/def level84 =  level 84 %;  hitdice 26d260+3400 %;  damdice 9d16+47 %;  hitroll 104 %;  wealth 4200%;  mana 1d1+10000
/def level85 =  level 85 %;  hitdice 27d262+3500 %;  damdice 9d17+47 %;  hitroll 105 %;  wealth 4200%;  mana 1d1+10000
/def level86 =  level 86 %;  hitdice 27d265+3600 %;  damdice 9d17+48 %;  hitroll 106 %;  wealth 4200%;  mana 1d1+10000
/def level87 =  level 87 %;  hitdice 28d267+3700 %;  damdice 9d17+48 %;  hitroll 107 %;  wealth 4200%;  mana 1d1+10000
/def level88 =  level 88 %;  hitdice 28d270+3800 %;  damdice 10d18+49 %;  hitroll 108 %;  wealth 4200%;  mana 1d1+10000
/def level89 =  level 89 %;  hitdice 29d272+3900 %;  damdice 10d18+49 %;  hitroll 109 %;  wealth 4200%;  mana 1d1+10000
/def level90 =  level 90 %;  hitdice 30d275+4000 %;  damdice 10d18+50 %;  hitroll 110 %;  wealth 4200%;  mana 1d1+10000
/def level91 =  level 91 %;  hitdice 31d277+4100 %;  damdice 10d18+52 %;  hitroll 111 %;  wealth 5400%;  mana 1d1+10000
/def level92 =  level 92 %;  hitdice 32d280+4200 %;  damdice 10d18+55 %;  hitroll 112 %;  wealth 5400%;  mana 1d1+10000
/def level93 =  level 93 %;  hitdice 33d282+4300 %;  damdice 10d18+56 %;  hitroll 113 %;  wealth 5400%;  mana 1d1+10000
/def level94 =  level 94 %;  hitdice 34d285+4400 %;  damdice 10d18+60 %;  hitroll 114 %;  wealth 5400%;  mana 1d1+10000
/def level95 =  level 95 %;  hitdice 35d287+4500 %;  damdice 10d19+62 %;  hitroll 115 %;  wealth 5400%;  mana 1d1+10000
/def level96 =  level 96 %;  hitdice 36d290+4600 %;  damdice 10d19+65 %;  hitroll 116 %;  wealth 5400%;  mana 1d1+10000
/def level97 =  level 97 %;  hitdice 37d292+4700 %;  damdice 10d19+67 %;  hitroll 117 %;  wealth 5400%;  mana 1d1+10000
/def level98 =  level 98 %;  hitdice 38d295+4800 %;  damdice 10d20+70 %;  hitroll 118 %;  wealth 5400%;  mana 1d1+10000
/def level99 =  level 99 %;  hitdice 39d297+4900 %;  damdice 10d20+72 %;  hitroll 119 %;  wealth 5400%;  mana 1d1+10000
/def level100 =  level 100 %;  hitdice 40d300+5000 %;  damdice 10d20+75 %;  hitroll 120 %;  wealth 5400%;  mana 1d1+10000
/def level101 =  level 101 %;  hitdice 40d302+5005 %;  damdice 10d20+76 %;  hitroll 121 %;  wealth 5760%;  mana 1d1+10000
/def level102 =  level 102 %;  hitdice 40d304+5010 %;  damdice 10d20+78 %;  hitroll 122 %;  wealth 5760%;  mana 1d1+10000
/def level103 =  level 103 %;  hitdice 41d306+5015 %;  damdice 10d20+79 %;  hitroll 123 %;  wealth 5760%;  mana 1d1+10000
/def level104 =  level 104 %;  hitdice 41d308+5020 %;  damdice 10d21+81 %;  hitroll 124 %;  wealth 5760%;  mana 1d1+10000
/def level105 =  level 105 %;  hitdice 42d310+5025 %;  damdice 10d21+82 %;  hitroll 125 %;  wealth 5760%;  mana 1d1+10000
/def level106 =  level 106 %;  hitdice 42+312+5030 %;  damdice 10d21+84 %;  hitroll 126 %;  wealth 5760%;  mana 1d1+10000
/def level107 =  level 107 %;  hitdice 43d314+5035 %;  damdice 11d21+85 %;  hitroll 127 %;  wealth 5760%;  mana 1d1+10000
/def level108 =  level 108 %;  hitdice 43d316+5040 %;  damdice 11d21+87 %;  hitroll 128 %;  wealth 5760%;  mana 1d1+10000
/def level109 =  level 109 %;  hitdice 44d318+5045 %;  damdice 11d22+89 %;  hitroll 129 %;  wealth 5760%;  mana 1d1+10000
/def level110 =  level 110 %;  hitdice 45d320+5050 %;  damdice 11d22+90 %;  hitroll 130 %;  wealth 5760%;  mana 1d1+10000
/def level111 =  level 111 %;  hitdice 45d321+5065 %;  damdice 11d22+90 %;  hitroll 131 %;  wealth 6120%;  mana 1d1+10000
/def level112 =  level 112 %;  hitdice 45d322+5080 %;  damdice 11d22+91 %;  hitroll 132 %;  wealth 6120%;  mana 1d1+10000
/def level113 =  level 113 %;  hitdice 46d323+5095 %;  damdice 11d22+91 %;  hitroll 133 %;  wealth 6120%;  mana 1d1+10000
/def level114 =  level 114 %;  hitdice 46d324+5110 %;  damdice 11d23+92 %;  hitroll 134 %;  wealth 6120%;  mana 1d1+10000
/def level115 =  level 115 %;  hitdice 47d325+5125 %;  damdice 11d23+92 %;  hitroll 135 %;  wealth 6120%;  mana 1d1+10000
/def level116 =  level 116 %;  hitdice 47d326+5140 %;  damdice 11d23+93 %;  hitroll 136 %;  wealth 6120%;  mana 1d1+10000
/def level117 =  level 117 %;  hitdice 48d327+5155 %;  damdice 12d23+93 %;  hitroll 137 %;  wealth 6120%;  mana 1d1+10000
/def level118 =  level 118 %;  hitdice 48d328+5170 %;  damdice 12d23+94 %;  hitroll 138 %;  wealth 6120%;  mana 1d1+10000
/def level119 =  level 119 %;  hitdice 49d329+5185 %;  damdice 12d24+94 %;  hitroll 139 %;  wealth 6120%;  mana 1d1+10000
/def level120 =  level 120 %;  hitdice 50d330+5200 %;  damdice 12d24+95 %;  hitroll 140 %;  wealth 6120%;  mana 1d1+10000
/def level121 =  level 121 %;  hitdice 50d331+5220 %;  damdice 12d24+95 %;  hitroll 141 %;  wealth 6480%;  mana 1d1+10000
/def level122 =  level 122 %;  hitdice 50d332+5240 %;  damdice 12d24+96 %;  hitroll 142 %;  wealth 6480%;  mana 1d1+10000
/def level123 =  level 123 %;  hitdice 51d333+5260 %;  damdice 12d24+96 %;  hitroll 143 %;  wealth 6480%;  mana 1d1+10000
/def level124 =  level 124 %;  hitdice 51d334+5280 %;  damdice 12d25+97 %;  hitroll 144 %;  wealth 6480%;  mana 1d1+10000
/def level125 =  level 125 %;  hitdice 52d335+5300 %;  damdice 12d25+97 %;  hitroll 145 %;  wealth 6480%;  mana 1d1+10000
/def level126 =  level 126 %;  hitdice 52d336+5320 %;  damdice 12d25+98 %;  hitroll 146 %;  wealth 6480%;  mana 1d1+10000
/def level127 =  level 127 %;  hitdice 53d337+5340 %;  damdice 13d25+98 %;  hitroll 147 %;  wealth 6480%;  mana 1d1+10000
/def level128 =  level 128 %;  hitdice 53d338+5360 %;  damdice 13d25+99 %;  hitroll 148 %;  wealth 6480%;  mana 1d1+10000
/def level129 =  level 129 %;  hitdice 54d339+5380 %;  damdice 13d26+99 %;  hitroll 149 %;  wealth 6480%;  mana 1d1+10000
/def level130 =  level 130 %;  hitdice 55d340+5400 %;  damdice 13d26+100 %;  hitroll 150 %;  wealth 6480%;  mana 1d1+10000
/def level131 =  level 131 %;  hitdice 55d341+5420 %;  damdice 13d26+102 %;  hitroll 151 %;  wealth 6840%;  mana 1d1+10000
/def level132 =  level 132 %;  hitdice 55d342+5440 %;  damdice 13d26+104 %;  hitroll 152 %;  wealth 6840%;  mana 1d1+10000
/def level133 =  level 133 %;  hitdice 56d343+5460 %;  damdice 13d27+106 %;  hitroll 153 %;  wealth 6840%;  mana 1d1+10000
/def level134 =  level 134 %;  hitdice 56d344+5480 %;  damdice 13d27+108 %;  hitroll 154 %;  wealth 6840%;  mana 1d1+10000
/def level135 =  level 135 %;  hitdice 57d345+5500 %;  damdice 13d27+110 %;  hitroll 155 %;  wealth 6840%;  mana 1d1+10000
/def level136 =  level 136 %;  hitdice 57d346+5520 %;  damdice 14d27+112 %;  hitroll 156 %;  wealth 6840%;  mana 1d1+10000
/def level137 =  level 137 %;  hitdice 58d347+5540 %;  damdice 14d27+114 %;  hitroll 157 %;  wealth 6840%;  mana 1d1+10000
/def level138 =  level 138 %;  hitdice 58d348+5560 %;  damdice 14d28+116 %;  hitroll 158 %;  wealth 6840%;  mana 1d1+10000
/def level139 =  level 139 %;  hitdice 59d349+5580 %;  damdice 14d28+118 %;  hitroll 159 %;  wealth 6840%;  mana 1d1+10000
/def level140 =  level 140 %;  hitdice 60d350+5600 %;  damdice 14d28+120 %;  hitroll 160 %;  wealth 6840%;  mana 1d1+10000
/def level141 =  level 141 %;  hitdice 60d351+5620 %;  damdice 14d28+121 %;  hitroll 161 %;  wealth 7200%;  mana 1d1+10000
/def level142 =  level 142 %;  hitdice 60d352+5640 %;  damdice 14d28+122 %;  hitroll 162 %;  wealth 7200%;  mana 1d1+10000
/def level143 =  level 143 %;  hitdice 61d353+5660 %;  damdice 14d29+123 %;  hitroll 163 %;  wealth 7200%;  mana 1d1+10000
/def level144 =  level 144 %;  hitdice 61d354+5680 %;  damdice 14d29+124 %;  hitroll 164 %;  wealth 7200%;  mana 1d1+10000
/def level145 =  level 145 %;  hitdice 62d355+5700 %;  damdice 14d29+125 %;  hitroll 165 %;  wealth 7200%;  mana 1d1+10000
/def level146 =  level 146 %;  hitdice 62d356+5720 %;  damdice 15d29+126 %;  hitroll 166 %;  wealth 7200%;  mana 1d1+10000
/def level147 =  level 147 %;  hitdice 63d357+5740 %;  damdice 15d29+127 %;  hitroll 167 %;  wealth 7200%;  mana 1d1+10000
/def level148 =  level 148 %;  hitdice 63d358+5760 %;  damdice 15d30+128 %;  hitroll 168 %;  wealth 7200%;  mana 1d1+10000
/def level149 =  level 149 %;  hitdice 64d359+5780 %;  damdice 15d30+129 %;  hitroll 169 %;  wealth 7200%;  mana 1d1+10000
/def level150 =  level 150 %;  hitdice 65d360+5800 %;  damdice 15d30+130 %;  hitroll 170 %;  wealth 7200%;  mana 1d1+10000
/def level151 =  level 151 %;  hitdice 65d362+5820 %;  damdice 15d30+130 %;  hitroll 171 %;  wealth 7560%;  mana 1d1+10000
/def level152 =  level 152 %;  hitdice 65d365+5840 %;  damdice 15d30+131 %;  hitroll 172 %;  wealth 7560%;  mana 1d1+10000
/def level153 =  level 153 %;  hitdice 66d367+5860 %;  damdice 15d30+131 %;  hitroll 173 %;  wealth 7560%;  mana 1d1+10000
/def level154 =  level 154 %;  hitdice 66d370+5880 %;  damdice 15d31+131 %;  hitroll 174 %;  wealth 7560%;  mana 1d1+10000
/def level155 =  level 155 %;  hitdice 67d372+5600 %;  damdice 15d31+132 %;  hitroll 175 %;  wealth 7560%;  mana 1d1+10000
/def level156 =  level 156 %;  hitdice 67d375+5620 %;  damdice 15d31+132 %;  hitroll 176 %;  wealth 7560%;  mana 1d1+10000
/def level157 =  level 157 %;  hitdice 68d377+5640 %;  damdice 15d31+133 %;  hitroll 177 %;  wealth 7560%;  mana 1d1+10000
/def level158 =  level 158 %;  hitdice 68d380+5660 %;  damdice 15d32+134 %;  hitroll 178 %;  wealth 7560%;  mana 1d1+10000
/def level159 =  level 159 %;  hitdice 69d382+5680 %;  damdice 15d32+134 %;  hitroll 179 %;  wealth 7560%;  mana 1d1+10000
/def level160 =  level 160 %;  hitdice 70d385+6000 %;  damdice 15d32+135 %;  hitroll 180 %;  wealth 7560%;  mana 1d1+10000
/def level161 =  level 161 %;  hitdice 70d386+6020 %;  damdice 15d32+135 %;  hitroll 181 %;  wealth 7920%;  mana 1d1+10000
/def level162 =  level 162 %;  hitdice 70d387+6040 %;  damdice 15d32+136 %;  hitroll 182 %;  wealth 7920%;  mana 1d1+10000
/def level163 =  level 163 %;  hitdice 71d388+6060 %;  damdice 15d32+136 %;  hitroll 183 %;  wealth 7920%;  mana 1d1+10000
/def level164 =  level 164 %;  hitdice 71d389+6080 %;  damdice 15d32+137 %;  hitroll 184 %;  wealth 7920%;  mana 1d1+10000
/def level165 =  level 165 %;  hitdice 72d390+6100 %;  damdice 15d33+137 %;  hitroll 185 %;  wealth 7920%;  mana 1d1+10000
/def level166 =  level 166 %;  hitdice 72d391+6120 %;  damdice 15d33+137 %;  hitroll 186 %;  wealth 7920%;  mana 1d1+10000
/def level167 =  level 167 %;  hitdice 73d392+6140 %;  damdice 16d33+138 %;  hitroll 187 %;  wealth 7920%;  mana 1d1+10000
/def level168 =  level 168 %;  hitdice 73d393+6160 %;  damdice 16d33+138 %;  hitroll 188 %;  wealth 7920%;  mana 1d1+10000
/def level169 =  level 169 %;  hitdice 74d394+6180 %;  damdice 16d34+139 %;  hitroll 189 %;  wealth 7920%;  mana 1d1+10000
/def level170 =  level 170 %;  hitdice 75d395+6200 %;  damdice 16d34+140 %;  hitroll 190 %;  wealth 7920%;  mana 1d1+10000
/def level171 =  level 171 %;  hitdice 75d396+6220 %;  damdice 16d34+140 %;  hitroll 191 %;  wealth 8400%;  mana 1d1+10000
/def level172 =  level 172 %;  hitdice 75d398+6240 %;  damdice 16d34+141 %;  hitroll 192 %;  wealth 8400%;  mana 1d1+10000
/def level173 =  level 173 %;  hitdice 76d399+6260 %;  damdice 16d34+142 %;  hitroll 193 %;  wealth 8400%;  mana 1d1+10000
/def level174 =  level 174 %;  hitdice 76d401+6280 %;  damdice 16d34+142 %;  hitroll 194 %;  wealth 8400%;  mana 1d1+10000
/def level175 =  level 175 %;  hitdice 77d402+6300 %;  damdice 16d35+142 %;  hitroll 195 %;  wealth 8400%;  mana 1d1+10000
/def level176 =  level 176 %;  hitdice 77d404+6320 %;  damdice 16d35+143 %;  hitroll 196 %;  wealth 8400%;  mana 1d1+10000
/def level177 =  level 177 %;  hitdice 77d405+6340 %;  damdice 17d35+143 %;  hitroll 197 %;  wealth 8400%;  mana 1d1+10000
/def level178 =  level 178 %;  hitdice 78d407+6360 %;  damdice 17d35+144 %;  hitroll 198 %;  wealth 8400%;  mana 1d1+10000
/def level179 =  level 179 %;  hitdice 79d408+6380 %;  damdice 17d36+144 %;  hitroll 199 %;  wealth 8400%;  mana 1d1+10000
/def level180 =  level 180 %;  hitdice 80d410+6400 %;  damdice 17d36+145 %;  hitroll 200 %;  wealth 8400%;  mana 1d1+10000
/def level181 =  level 181 %;  hitdice 80d411+6420 %;  damdice 17d36+146 %;  hitroll 201 %;  wealth 9000%;  mana 1d1+10000
/def level182 =  level 182 %;  hitdice 81d412+6440 %;  damdice 17d36+148 %;  hitroll 202 %;  wealth 9000%;  mana 1d1+10000
/def level183 =  level 183 %;  hitdice 81d413+6460 %;  damdice 17d37+149 %;  hitroll 203 %;  wealth 9000%;  mana 1d1+10000
/def level184 =  level 184 %;  hitdice 82d414+6480 %;  damdice 17d37+151 %;  hitroll 204 %;  wealth 9000%;  mana 1d1+10000
/def level185 =  level 185 %;  hitdice 82d415+6500 %;  damdice 18d37+152 %;  hitroll 205 %;  wealth 9000%;  mana 1d1+10000
/def level186 =  level 186 %;  hitdice 83d416+6520 %;  damdice 18d38+154 %;  hitroll 206 %;  wealth 9000%;  mana 1d1+10000
/def level187 =  level 187 %;  hitdice 83d417+6540 %;  damdice 18d38+155 %;  hitroll 207 %;  wealth 9000%;  mana 1d1+10000
/def level188 =  level 188 %;  hitdice 84d418+6560 %;  damdice 18d39+156 %;  hitroll 208 %;  wealth 9000%;  mana 1d1+10000
/def level189 =  level 189 %;  hitdice 84d419+6580 %;  damdice 19d39+158 %;  hitroll 209 %;  wealth 9000%;  mana 1d1+10000
/def level190 =  level 190 %;  hitdice 85d420+6600 %;  damdice 19d40+160 %;  hitroll 210 %;  wealth 9000%;  mana 1d1+10000
/def level191 =  level 191 %;  hitdice 85d422+6640 %;  damdice 19d40+162 %;  hitroll 211 %;  wealth 9600%;  mana 1d1+10000
/def level192 =  level 192 %;  hitdice 86d424+6680 %;  damdice 19d40+164 %;  hitroll 212 %;  wealth 9600%;  mana 1d1+10000
/def level193 =  level 193 %;  hitdice 86d426+6720 %;  damdice 19d40+166 %;  hitroll 213 %;  wealth 9600%;  mana 1d1+10000
/def level194 =  level 194 %;  hitdice 87d428+6760 %;  damdice 19d40+168 %;  hitroll 214 %;  wealth 9600%;  mana 1d1+10000
/def level195 =  level 195 %;  hitdice 87d430+6800 %;  damdice 19d40+170 %;  hitroll 215 %;  wealth 9600%;  mana 1d1+10000
/def level196 =  level 196 %;  hitdice 88d432+6840 %;  damdice 19d40+172 %;  hitroll 216 %;  wealth 9600%;  mana 1d1+10000
/def level197 =  level 197 %;  hitdice 88d434+6880 %;  damdice 20d40+174 %;  hitroll 217 %;  wealth 9600%;  mana 1d1+10000
/def level198 =  level 198 %;  hitdice 89d436+6920 %;  damdice 20d40+176 %;  hitroll 218 %;  wealth 9600%;  mana 1d1+10000
/def level199 =  level 199 %;  hitdice 89d438+6960 %;  damdice 20d40+178 %;  hitroll 219 %;  wealth 9600%;  mana 1d1+10000
/def level200 =  level 200 %;  hitdice 90d440+7000 %;  damdice 20d40+180 %;  hitroll 220 %;  wealth 9600%;  mana 1d1+10000
/def level201 =  level 201 %;  hitdice 90d442+7040 %;  damdice 21d40+182 %;  hitroll 221 %;  wealth 9600%;  mana 1d1+10000
/def level202 =  level 202 %;  hitdice 91d444+7080 %;  damdice 21d40+184 %;  hitroll 222 %;  wealth 9600%;  mana 1d1+10000
/def level203 =  level 203 %;  hitdice 91d446+7120 %;  damdice 21d40+186 %;  hitroll 223 %;  wealth 9600%;  mana 1d1+10000
/def level204 =  level 204 %;  hitdice 92d448+7160 %;  damdice 22d40+188 %;  hitroll 224 %;  wealth 9600%;  mana 1d1+10000
/def level205 =  level 205 %;  hitdice 92d450+7200 %;  damdice 22d40+190 %;  hitroll 225 %;  wealth 9600%;  mana 1d1+10000
/def level206 =  level 206 %;  hitdice 93d452+7240 %;  damdice 22d41+192 %;  hitroll 226 %;  wealth 9600%;  mana 1d1+10000
/def level207 =  level 207 %;  hitdice 93d454+7280 %;  damdice 22d41+194 %;  hitroll 227 %;  wealth 9600%;  mana 1d1+10000
/def level208 =  level 208 %;  hitdice 94d456+7320 %;  damdice 22d41+196 %;  hitroll 228 %;  wealth 9600%;  mana 1d1+10000
/def level209 =  level 209 %;  hitdice 94d458+7360 %;  damdice 22d41+198 %;  hitroll 229 %;  wealth 9600%;  mana 1d1+10000
/def level210 =  level 210 %;  hitdice 95d460+7400 %;  damdice 23d41+200 %;  hitroll 230 %;  wealth 9600%;  mana 1d1+10000
/def level211 =  level 211 %;  hitdice 95d462+7420 %;  damdice 23d41+202 %;  hitroll 231 %;  wealth 9600%;  mana 1d1+10000
/def level212 =  level 212 %;  hitdice 96d464+7480 %;  damdice 23d41+204 %;  hitroll 232 %;  wealth 9600%;  mana 1d1+10000
/def level213 =  level 213 %;  hitdice 96d466+7540 %;  damdice 23d42+206 %;  hitroll 233 %;  wealth 9600%;  mana 1d1+10000
/def level214 =  level 214 %;  hitdice 97d468+7600 %;  damdice 23d42+207 %;  hitroll 234 %;  wealth 9600%;  mana 1d1+10000
/def level215 =  level 215 %;  hitdice 97d470+7660 %;  damdice 23d42+208 %;  hitroll 235 %;  wealth 9600%;  mana 1d1+10000



