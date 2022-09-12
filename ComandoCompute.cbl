      ******************************************************************
      * Author:RARIKMILKRAI SOUZA
      * Date:12/09/22
      * Purpose:COMANDO COMPUTE
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. COMANDO_COMPUTE.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-RESULT        PIC 9(05)  VALUE ZEROS.
       77 WS-NUM-1         PIC 99     VALUE ZEROS.
       77 WS-NUM-2         PIC 99     VALUE ZEROS.
       PROCEDURE DIVISION.

            COMPUTE WS-RESULT = 5 + 5
            COMPUTE WS-RESULT = WS-RESULT ** 2

            DISPLAY 'RESULTADO: ' WS-RESULT

            DISPLAY 'INFORME O PRIMEIRO NUMERO: '
            ACCEPT WS-NUM-1

            DISPLAY ' INFORME O SEGUNDO NUMERO: '
            ACCEPT WS-NUM-2

            COMPUTE WS-RESULT = WS-NUM-1 + WS-NUM-2

            DISPLAY 'RESULTADO: ' WS-RESULT

            STOP RUN.
       END PROGRAM COMANDO_COMPUTE.
