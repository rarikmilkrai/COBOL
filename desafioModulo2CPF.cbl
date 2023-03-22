      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
       01 PARAMETRES.
           02 WS-RETURN PIC 99 VALUE 0.
           02 WS-NUM-1  PIC 99 VALUE 0.
           02 WS-NUM-2  PIC 99 VALUE 0.

       PROCEDURE DIVISION USING PARAMETRES.
       MAIN-PROCEDURE.
            DISPLAY "PROGRAMA CHAMADO"

            COMPUTE WS-RETURN = WS-NUM1 + WS-NUM-2

            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
