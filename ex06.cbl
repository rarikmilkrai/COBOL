      ******************************************************************
      * Author:RARIKMILKRAI SOUZA
      * Date:31/08/22
      * Purpose:COMANDO SET
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ex05.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-NUM-1                    PIC 99 VALUE 0.
       77 WS-NUM-2                    PIC 99 VALUE 0.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY 'ANTES DE SETAR WSS-NUM-1.: ' WS-NUM-1
            SET WS-NUM-1              TO 5
            DISPLAY 'DEPOIS DE SETAR WS-NUM-1: ' WS-NUM-1

            DISPLAY 'ANTES DE SETAR WSS-NUM-2.: ' WS-NUM-2
              SET  WS-NUM-2           TO WS-NUM-1
             DISPLAY 'DEPOIS DE SETAR WS-NUM-2: ' WS-NUM-2

              SET WS-NUM-1            TO 7
              DISPLAY 'VALOR FINAL WS-NUM-1.....: ' WS-NUM-1
              DISPLAY 'VALOR FINAL WS-NUM-1.....: ' WS-NUM-2
            STOP RUN.
       END PROGRAM ex05.
