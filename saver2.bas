#RetroDevStudio.MetaData.BASIC:2049,BASIC V2
5 PRINT "R READ AND PRINT, W WRITE TO FILE 2"
10 INPUT "AUSWAHL"; EG$
11 IF EG$="W" THEN GOTO 15
12 IF EG$="R" THEN GOTO 140

15 FOR I=1 TO 9:READ RT$(I):NEXT
20 PRINT "PRESS KEY TO WRITE"; F$
30 OPEN 2,8,2,"2,S,W"

75 FOR I=1 TO 9
80 PRINT#2, RT$(I)
90 NEXT I
100 CLOSE 2
120 PRINT "DATA SAVED SUCCESSFULLY"
130 INPUT "TASTE DRUECKEN"; EG$ :GOTO5

140 PRINT "LESEN UND AUSGABE..."
220 PRINT "PRESS KEY TO READ"; F$
230 OPEN 2,8,2,"2,S,R"

275 FOR I=1 TO 9
280 INPUT#2, RR$(I)
290 NEXT I
300 CLOSE 2
310 PRINT"DATEN GELESEN.. ERSETZUNG"
320 FOR I=1TO 9
340 N$ = ""
350 FOR E = 1 TO LEN(RR$(I))
360   C$ = MID$(RR$(I), E, 1)
370   IF C$ = "&" THEN C$ = ","
380   N$ = N$ + C$
385 NEXT E
386 RR$(I)=N$: PRINT RR$(I);
390 NEXT I


420 REM FOR I=1TO 9
421 REM FOR E=1TOLEN(RR$(I))
422 REM C$=MID$(RR$(I),E,1)
423 REM IF C$ = "&" THEN C$ = ","
424 REM RR$(I) = RR$(I) + C$
426 REM NEXT E
430 REM PRINT RR$(I);
440 REM NEXT I
450 INPUT "ALLE DATEN GELESEN.. ENDE.."; EG$:GOTO5


10205 DATA "ER STEHT AN EINEM NORMALEN BAHNHOF. HIER"
10210 DATA "UND DA ETWAS DRECKIG& SONST LANGWEILIG. "
10215 DATA "DER ZUG KOMMT ALLE 5 MINUTEN - NAJA WENN"
10220 DATA "ER DENN KOMMT WAS MAN BEI DER BAHN JA..."
10225 DATA "LASSEN WIR DAS THEMA. ABER DA ROLLT AUCH"
10230 DATA "SCHON EIN ZUG EIN. AM BAHNSTEIG STEHEN  "
10235 DATA "NUR WENIGE MITFAHRER. ALLE SIND VERTIEFT"
10240 DATA "UND HABEN EINEN KLEINEN GRAUEN KASTEN IN"
10245 DATA "DEN HAENDEN AUS DEM LEISE MUSIK DUDELT. "
